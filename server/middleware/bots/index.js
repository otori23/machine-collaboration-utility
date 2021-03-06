/* global logger */
const router = require('koa-router')();
const fs = require('fs-promise');
const path = require('path');
const _ = require('lodash');

const botsRoutes = require('./routes');
const botModel = require('./model');
const Bot = require('./bot');

/**
 * This is a Bots class representing all of the available hardware
 *
 * The bots are discovered or registered through this class and controlled by
 * the individual Bot class API
 *
 * @param {Object} app - The parent Koa app.
 * @param {string} routeEndpoint - The relative endpoint.
 */
class Bots {
  constructor(app, routeEndpoint) {
    // Setup internal and external app references
    app.context.bots = this;
    this.app = app;

    // Setup logger and router
    this.routeEndpoint = routeEndpoint;
    this.router = router;

    // Initialize list of bots and bot presets to be empty objects
    this.botPresetList = {};
    this.botSettingList = {};
    this.botList = {};
  }

  /*******************************************************************************
   * Initialization functions
   ******************************************************************************/
  /**
   * initialize the bots endpoint
   */
  async initialize() {
    try {
      // Set up the router
      await this.loadBotPresetList();
      await this.setupRouter();

      // Set up the bot database model
      this.BotModel = await botModel(this.app);

      let botsDbArray;
      try {
        botsDbArray = await this.BotModel.findAll();
      } catch (ex) {
        // In case of first boot, or schema changing, sync the database
        // WARNING this will drop all entries from the table
        await this.app.context.db.sync({ force: true });
        botsDbArray = await this.BotModel.findAll();
      }

      // Load all bots from the database and add them to the 'botList' object
      botsDbArray.forEach((dbBot) => {
        try {
          if (dbBot.dataValues.custom && dbBot.dataValues.custom.length > 0) {
            dbBot.dataValues.custom = JSON.parse(dbBot.dataValues.custom);
          }

          // In case the middleware instance is only for Conducting or Serial,
          // Don't or Do, respectively, add Serial printers
          if (process.env.ONLY_CONDUCT === 'true') {
            try {
              const connectionType = this.app.context.bots.getBotPresets()[dbBot.model].info.connectionType;
              if (connectionType !== 'serial') {
                this.createBot(dbBot.dataValues);
              }
            } catch (ex) {
              logger.error('Could not retreive connectionType', ex);
            }
          } else if (process.env.ONLY_SERIAL === 'true') {
            try {
              const connectionType = this.app.context.bots.getBotPresets()[dbBot.model].info.connectionType;
              if (connectionType === 'serial') {
                this.createBot(dbBot.dataValues);
              }
            } catch (ex) {
              logger.error('Could not retreive connectionType', ex);
            }
          } else {
            this.createBot(dbBot.dataValues);
          }
        } catch (ex) {
          logger.error(`Failed to create bot. ${ex}`);
        }
      });

      // Start scanning for all bots
      // Do not use usb if testing
      if (process.env.ONLY_CONDUCT !== 'true' && process.env.NODE_ENV !== 'test') {
        await Promise.delay(1000);
        this.setupDiscovery();
      }

      logger.info('Bots instance initialized');
    } catch (ex) {
      logger.error('Bot initialization error', ex);
    }
  }

  /**
   * Set up the bot's instance's router
   */
  async setupRouter() {
    try {
      // Populate this.router with all routes
      // Then register all routes with the app
      await botsRoutes(this);
      // Register all router routes with the app
      this.app.use(this.router.routes()).use(this.router.allowedMethods());
      logger.info('Bots router setup complete');
    } catch (ex) {
      logger.error('Bots router setup error', ex);
    }
  }

  /*
  * Scan through and initialize every discovery type
  */
  async setupDiscovery() {
    const discoveryDirectory = path.join(__dirname, './discovery');
    const discoveryTypes = await fs.readdir(discoveryDirectory);
    discoveryTypes.forEach((discoveryFile) => {
      // Scan through all of the discovery types.
      // Make sure to ignore the source map files
      // TODO refactor in case helper files are necessary in the 'discovery' folder
      if (discoveryFile.indexOf('.map') === -1) {
        const discoveryType = discoveryFile.split('.')[0];
        const discoveryPath = path.join(__dirname, `./discovery/${discoveryFile}`);
        const DiscoveryClass = require(discoveryPath);
        const discoveryObject = new DiscoveryClass(this.app);
        discoveryObject.initialize();
        logger.info(`${discoveryType} discovery initialized`);
      }
    });
  }

  async loadBotPresetList() {
    const botDirectory = path.join(process.env.PWD, './bots');
    const files = await fs.readdir(botDirectory);
    const botPresets = await Promise.filter(files, async (file) => {
      const stat = await fs.stat(path.join(botDirectory, file));
      return stat.isDirectory();
    });

    botPresets.forEach((botPreset) => {
      const presetPath = path.join(botDirectory, botPreset);
      const BotPreset = require(presetPath);

      this.botPresetList[botPreset] = BotPreset;
    });

    logger.info('Done loading presets');
  }


  /*******************************************************************************
  * Core functions
  ******************************************************************************/
  async createPersistentBot(inputSettings = {}) {
    const newBot = this.createBot(inputSettings);
    const dbBotSettings = Object.assign({}, newBot.settings);

    if (typeof dbBotSettings.custom === 'object') {
      dbBotSettings.custom = JSON.stringify(dbBotSettings.custom);
    }

    // Need to work out caveat for USB printers that don't have a pnpid
    await this.BotModel.create(dbBotSettings);
    return newBot;
  }

  createBot(inputSettings = {}) {
    // Load presets based on the model
    // If no model is passed, or if the model does not exist use the default presets
    const botPresets = (
      inputSettings.model === undefined ||
      this.botPresetList[inputSettings.model] === undefined
    ) ?
    this.botPresetList.Virtual :
    this.botPresetList[inputSettings.model];
    // Mixin all input settings into the bot object
    const newBot = new Bot(this.app, botPresets, inputSettings);

    // Add the bot to the list
    this.botList[newBot.settings.uuid] = newBot;

    this.app.io.broadcast('botEvent', {
      uuid: newBot.settings.uuid,
      event: 'new',
      data: newBot.getBot(),
    });

    return newBot;
  }

  async deleteBot(uuid) {
    try {
      const bot = this.botList[uuid];
      if (bot === undefined) {
        throw new Error(`Bot "${uuid}" is undefined`);
      }

      // Sweep through all of the bots in the database
      // Make sure the bot is in the database. If it is, delete it
      const bots = await this.BotModel.findAll();
      let deleted = false;

      await Promise.map(bots, async (dbBot) => {
        const dbBotUuid = dbBot.dataValues.uuid;
        if (uuid === dbBotUuid) {
          await dbBot.destroy();
          this.botList[uuid].commands.toggleUpdater(this.botList[uuid], { update: false });
          delete this.botList[uuid];
          deleted = true;
        }
      });

      if (!deleted) {
        throw new Error(
          `Bot "${uuid}" was not deleted from the database because it cound not be found in the database.`
        );
      }

      this.app.io.broadcast('botEvent', {
        uuid,
        event: 'delete',
        data: null,
      });

      return `Bot "${uuid}" successfully deleted`;
    } catch (ex) {
      logger.error('Delete bot error', ex);
      return 'Delete bot error';
    }
  }

  /*******************************************************************************
  * Utility functions
  ******************************************************************************/
  /*
  * get a json friendly description of the Bots
  */
  getBots() {
    const filteredBots = {};
    _.entries(this.botList).forEach(([botKey, bot]) => {
      filteredBots[botKey] = bot.getBot();
    });
    return filteredBots;
  }

  /*
  * get a json friendly description of a Bots
  */
  getBot(uuid) {
    return this.botList[uuid].getBot();
  }

  // Return the list, but only the info and settings. no commands
  getBotPresets() {
    const presetList = {};
    _.entries(this.botPresetList).forEach(([presetKey, preset]) => {
      presetList[presetKey] = {
        info: preset.info,
        settings: preset.settings,
      };
    });
    return presetList;
  }

  findBotByName(name) {
    let botByName;

    _.entries(this.botList).forEach(([botKey, bot]) => {
      if (bot.settings.name === name) {
        botByName = bot;
      }
    });

    return botByName;
  }

  // For ease of communication with single bots using the api
  // allow the first connected bot to be address as 'solo'
  // return the first connected bot
  soloBot() {
    let uuid;

    _.entries(this.botList).forEach(([botKey, bot]) => {
      if (bot.fsm.current !== 'unavailable') {
        uuid = bot.settings.uuid;
      }
    });

    if (uuid === undefined) {
      throw new Error('No bot is currently available');
    }

    return uuid;
  }
}

module.exports = Bots;
