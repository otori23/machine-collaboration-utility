module.exports = async function updateCollaboratorCheckpoints(self, params) {
  self.status.collaborators = params.collaborators;

  if (
    self.status.blocker !== undefined &&
    self.status.blocker.bot !== undefined &&
    self.status.blocker.checkpoint !== undefined
  ) {
    const blockingBotCurrentCheckpoint = self.status.collaborators[self.status.blocker.bot];
    // If the precursor is complete then move on
    if (blockingBotCurrentCheckpoint > self.status.blocker.checkpoint) {
      self.status.blocker = undefined;
      self.lr.resume();
    } else {
      // If the precursor is not complete, then park
      self.queue.queueCommands({
        postCallback: () => {
          self.commands.park(self);
        },
      });
    }
  }
};
