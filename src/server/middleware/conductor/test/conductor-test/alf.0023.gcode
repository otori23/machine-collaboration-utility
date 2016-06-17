G1 Y156.501 Z2.200; move to point above task toolpaths start
G1 Z1.200 F1080; move down to toolpath start
G1 E0.00000 F1500
G92 E0
; bead-perimeter_inner
G1 X21.531 Y160.232 E4.19480 F4200
G1 Y87.305 E6.62037
G1 X147.597 Y87.477 E10.81334
G1 Y99.373 E11.20902
G1 X65.313 Y99.261 E13.94581
G1 X64.149 Y99.400 E13.98479
G1 X62.986 Y99.838 E14.02613
G1 X61.960 Y100.540 E14.06747
G1 X61.132 Y101.467 E14.10880
G1 X60.549 Y102.564 E14.15014
G1 X60.244 Y103.769 E14.19148
G1 X60.236 Y105.012 E14.23282
G1 X60.524 Y106.221 E14.27415
G1 X61.092 Y107.326 E14.31549
G1 X61.907 Y108.264 E14.35683
G1 X62.865 Y108.940 E14.39581
G1 X122.373 Y140.988 E16.64383
G1 X125.516 Y142.182 E16.75567
G1 X128.938 Y142.530 E16.87006
G1 X132.333 Y141.981 E16.98446
G1 X135.400 Y140.603 E17.09629
G1 X147.597 Y133.071 E17.57306
G1 Y156.501 E18.35233
; rapid-dry
G1 E17.35233 F1500; retract filament
G1 X100.325 Y142.171 F5400; rapid
G1 E18.35233 F1500; engage filament
; bead-perimeter_inner
G1 X100.462 Y140.827 E18.39727 F4200
G1 X100.246 Y139.493 E18.44220
G1 X99.692 Y138.261 E18.48713
G1 X98.838 Y137.214 E18.53206
G1 X97.805 Y136.469 E18.57444
G1 X40.975 Y105.863 E20.72129
G1 X39.802 Y105.415 E20.76306
G1 X38.478 Y105.273 E20.80736
G1 X37.161 Y105.473 E20.85166
G1 X35.939 Y106.004 E20.89596
G1 X34.893 Y106.828 E20.94026
G1 X34.092 Y107.892 E20.98456
G1 X33.589 Y109.125 E21.02886
G1 X33.427 Y110.371 E21.07063
G1 Y134.484 E21.87265
G1 X33.763 Y137.403 E21.97037
G1 X34.773 Y140.233 E22.07032
G1 X36.399 Y142.761 E22.17027
G1 X38.555 Y144.854 E22.27022
G1 X41.129 Y146.404 E22.37017
G1 X43.988 Y147.330 E22.47012
G1 X46.915 Y147.579 E22.56783
G1 X95.518 Y146.140 E24.18507
G1 X96.776 Y145.937 E24.22745
G1 X98.008 Y145.383 E24.27238
G1 X99.055 Y144.529 E24.31731
G1 X99.845 Y143.434 E24.36225
G1 X100.325 Y142.171 E24.40718
; rapid-leaky
G1 X99.932 Y142.078 F5400; rapid
; bead-perimeter_outer
G1 X100.058 Y140.839 E24.44861 F2400
G1 X99.859 Y139.609 E24.49004
G1 X99.349 Y138.473 E24.53147
G1 X98.562 Y137.508 E24.57290
G1 X97.592 Y136.808 E24.61265
G1 X40.808 Y106.227 E26.75776
G1 X39.708 Y105.807 E26.79695
G1 X38.487 Y105.676 E26.83780
G1 X37.272 Y105.861 E26.87864
G1 X36.146 Y106.350 E26.91949
G1 X35.181 Y107.110 E26.96033
G1 X34.443 Y108.091 E27.00118
G1 X33.979 Y109.228 E27.04203
G1 X33.827 Y110.397 E27.08121
G1 Y134.462 E27.88161
G1 X34.155 Y137.312 E27.97705
G1 X35.134 Y140.056 E28.07394
G1 X36.710 Y142.506 E28.17083
G1 X38.800 Y144.535 E28.26772
G1 X41.296 Y146.038 E28.36462
G1 X44.067 Y146.936 E28.46151
G1 X46.926 Y147.179 E28.55694
G1 X95.480 Y145.741 E30.17255
G1 X96.660 Y145.550 E30.21229
G1 X97.796 Y145.040 E30.25372
G1 X98.761 Y144.253 E30.29515
G1 X99.490 Y143.242 E30.33658
G1 X99.932 Y142.078 E30.37801
; rapid-leaky
G1 X100.603 Y142.567 F5400; rapid
; bead-sparse_infill
G1 X108.954 Y134.215 E30.77082 F4800
G1 X107.115 Y133.225 E30.84027
G1 X100.678 Y139.662 E31.14305
G1 X99.778 Y137.734 E31.21383
G1 X105.277 Y132.235 E31.47246
G1 X103.438 Y131.245 E31.54191
G1 X98.330 Y136.354 E31.78221
G1 X96.528 Y135.327 E31.85117
G1 X101.600 Y130.255 E32.08973
G1 X99.762 Y129.265 E32.15917
G1 X94.690 Y134.337 E32.39773
G1 X92.852 Y133.347 E32.46718
G1 X97.923 Y128.275 E32.70573
G1 X96.085 Y127.285 E32.77518
G1 X91.013 Y132.357 E33.01373
G1 X89.175 Y131.367 E33.08318
G1 X94.247 Y126.295 E33.32173
G1 X92.408 Y125.305 E33.39118
G1 X87.337 Y130.377 E33.62973
G1 X85.498 Y129.387 E33.69918
G1 X90.570 Y124.315 E33.93774
G1 X88.731 Y123.325 E34.00718
G1 X83.660 Y128.396 E34.24574
G1 X81.822 Y127.406 E34.31518
G1 X86.893 Y122.335 E34.55374
G1 X85.055 Y121.345 E34.62319
G1 X79.983 Y126.416 E34.86174
G1 X78.145 Y125.426 E34.93119
G1 X83.216 Y120.355 E35.16974
G1 X81.378 Y119.365 E35.23919
G1 X76.306 Y124.436 E35.47774
G1 X74.468 Y123.446 E35.54719
G1 X79.540 Y118.375 E35.78574
G1 X77.701 Y117.385 E35.85519
G1 X72.630 Y122.456 E36.09374
G1 X70.791 Y121.466 E36.16319
G1 X75.863 Y116.395 E36.40174
G1 X74.025 Y115.404 E36.47119
G1 X68.953 Y120.476 E36.70974
G1 X67.115 Y119.486 E36.77919
G1 X72.186 Y114.414 E37.01774
G1 X70.348 Y113.424 E37.08719
G1 X65.276 Y118.496 E37.32574
G1 X63.438 Y117.506 E37.39520
G1 X68.509 Y112.434 E37.63375
G1 X66.671 Y111.444 E37.70319
G1 X61.599 Y116.516 E37.94175
G1 X59.761 Y115.526 E38.01119
G1 X64.833 Y110.454 E38.24975
G1 X62.994 Y109.464 E38.31920
G1 X57.923 Y114.536 E38.55775
G1 X56.084 Y113.546 E38.62720
G1 X61.372 Y108.258 E38.87590
G1 X60.246 Y106.556 E38.94379
G1 X54.246 Y112.556 E39.22601
G1 X52.408 Y111.566 E39.29546
G1 X59.842 Y104.132 E39.64514
G1 X50.569 Y110.576 E40.02071
G1 X73.369 Y87.776 E41.09315
G1 X70.545 Y87.772 E41.18710
G1 X48.731 Y109.585 E42.21315
G1 X46.892 Y108.595 E42.28260
G1 X67.720 Y87.768 E43.26227
G1 X64.895 Y87.764 E43.35621
G1 X45.054 Y107.605 E44.28949
G1 X43.216 Y106.615 E44.35894
G1 X62.071 Y87.760 E45.24583
G1 X59.246 Y87.756 E45.33978
G1 X41.377 Y105.625 E46.18029
G1 X39.224 Y104.950 E46.25535
G1 X56.422 Y87.752 E47.06429
G1 X53.597 Y87.748 E47.15824
G1 X35.526 Y105.820 E48.00826
G1 X34.010 Y107.336 E48.07956
G1 X21.931 Y119.415 E48.64772
G1 Y122.243 E48.74179
G1 X33.027 Y111.147 E49.26373
G1 Y113.975 E49.35781
G1 X21.931 Y125.072 E49.87975
G1 Y127.900 E49.97383
G1 X33.027 Y116.804 E50.49577
G1 Y119.632 E50.58984
G1 X21.931 Y130.728 E51.11178
G1 Y133.557 E51.20586
G1 X33.027 Y122.460 E51.72779
G1 Y125.289 E51.82187
G1 X21.931 Y136.385 E52.34381
G1 Y139.214 E52.43789
G1 X33.027 Y128.117 E52.95983
G1 Y130.946 E53.05390
G1 X21.931 Y142.042 E53.57584
G1 Y144.871 E53.66991
G1 X33.027 Y133.774 E54.19186
G1 X33.243 Y136.387 E54.27905
G1 X21.931 Y147.699 E54.81114
G1 Y150.527 E54.90522
G1 X33.790 Y138.669 E55.46301
G1 X34.593 Y140.693 E55.53547
G1 X21.931 Y153.356 E56.13107
G1 Y156.184 E56.22514
G1 X35.700 Y142.415 E56.87281
G1 X37.021 Y143.923 E56.93948
G1 X21.931 Y159.013 E57.64927
G1 X24.014 Y159.758 E57.72285
G1 X38.490 Y145.282 E58.40377
G1 X40.256 Y146.345 E58.47231
G1 X26.929 Y159.672 E59.09917
G1 X29.843 Y159.586 E59.19615
G1 X42.243 Y147.186 E59.77942
G1 X44.483 Y147.774 E59.85645
G1 X32.758 Y159.499 E60.40798
G1 X35.673 Y159.413 E60.50497
G1 X47.112 Y147.973 E61.04306
G1 X50.027 Y147.887 E61.14005
G1 X38.587 Y159.327 E61.67814
G1 X41.502 Y159.241 E61.77513
G1 X52.942 Y147.801 E62.31322
G1 X55.857 Y147.715 E62.41021
G1 X44.417 Y159.154 E62.94830
G1 X47.331 Y159.068 E63.04529
G1 X58.771 Y147.628 E63.58338
G1 X61.686 Y147.542 E63.68037
G1 X50.246 Y158.982 E64.21846
G1 X53.161 Y158.896 E64.31544
G1 X64.601 Y147.456 E64.85355
G1 X67.515 Y147.369 E64.95053
G1 X56.076 Y158.809 E65.48862
G1 X58.990 Y158.723 E65.58561
G1 X70.430 Y147.283 E66.12370
G1 X73.345 Y147.197 E66.22069
G1 X61.905 Y158.637 E66.75879
G1 X64.820 Y158.551 E66.85577
G1 X76.259 Y147.111 E67.39387
G1 X79.174 Y147.024 E67.49085
G1 X67.734 Y158.464 E68.02895
G1 X70.649 Y158.378 E68.12593
G1 X82.089 Y146.938 E68.66402
G1 X85.004 Y146.852 E68.76101
G1 X73.564 Y158.292 E69.29910
G1 X76.478 Y158.205 E69.39609
G1 X87.918 Y146.766 E69.93419
G1 X90.833 Y146.679 E70.03117
G1 X79.393 Y158.119 E70.56927
G1 X82.308 Y158.033 E70.66626
G1 X93.748 Y146.593 E71.20435
G1 X96.837 Y146.332 E71.30746
G1 X85.223 Y157.947 E71.85378
G1 X88.137 Y157.860 E71.95076
G1 X110.792 Y135.206 E73.01637
G1 X112.630 Y136.196 E73.08582
G1 X91.052 Y157.774 E74.10081
G1 X93.967 Y157.688 E74.19778
G1 X114.469 Y137.186 E75.16215
G1 X116.307 Y138.176 E75.23160
G1 X96.881 Y157.602 E76.14532
G1 X99.796 Y157.515 E76.24231
G1 X118.145 Y139.166 E77.10542
G1 X119.984 Y140.156 E77.17486
G1 X102.711 Y157.429 E77.98734
G1 X105.625 Y157.343 E78.08432
G1 X121.822 Y141.146 E78.84617
G1 X123.828 Y141.969 E78.91827
G1 X108.540 Y157.256 E79.63735
G1 X111.455 Y157.170 E79.73434
G1 X125.992 Y142.633 E80.41813
G1 X128.560 Y142.894 E80.50396
G1 X114.369 Y157.084 E81.17142
G1 X117.284 Y156.998 E81.26840
G1 X131.812 Y142.470 E81.95174
G1 X137.067 Y140.044 E82.14425
G1 X120.199 Y156.911 E82.93766
G1 X123.114 Y156.825 E83.03465
G1 X144.461 Y135.477 E84.03877
G1 X147.197 Y135.570 E84.12981
G1 X126.028 Y156.739 E85.12551
G1 X128.943 Y156.653 E85.22250
G1 X147.197 Y138.399 E86.08110
G1 Y141.227 E86.17517
G1 X131.858 Y156.566 E86.89668
G1 X134.772 Y156.480 E86.99368
G1 X147.197 Y144.056 E87.57809
G1 Y146.884 E87.67216
G1 X137.687 Y156.394 E88.11947
G1 X140.602 Y156.307 E88.21646
G1 X147.197 Y149.712 E88.52667
G1 Y152.541 E88.62074
G1 X143.516 Y156.221 E88.79385
G1 X146.431 Y156.135 E88.89084
G1 X147.197 Y155.369 E88.92686
; bead-sparse_infill
; rapid-leaky
G1 X147.997 Y156.889 F5400; rapid
; bead-perimeter_outer
G1 X21.131 Y160.644 E93.14828 F2400
G1 Y86.904 E95.60088
G1 X147.997 Y87.077 E99.82045
G1 Y99.774 E100.24274
G1 X65.336 Y99.661 E102.99205
G1 X64.244 Y99.792 E103.02863
G1 X63.172 Y100.195 E103.06674
G1 X62.226 Y100.843 E103.10486
G1 X61.463 Y101.697 E103.14297
G1 X60.925 Y102.709 E103.18109
G1 X60.644 Y103.820 E103.21922
G1 X60.636 Y104.966 E103.25733
G1 X60.902 Y106.081 E103.29545
G1 X61.425 Y107.101 E103.33357
G1 X62.177 Y107.966 E103.37169
G1 X63.076 Y108.599 E103.40826
G1 X122.540 Y140.624 E105.65461
G1 X125.609 Y141.790 E105.76382
G1 X128.926 Y142.127 E105.87471
G1 X132.217 Y141.594 E105.98560
G1 X135.212 Y140.248 E106.09481
G1 X147.997 Y132.354 E106.59456
G1 Y156.889 E107.41060
; rapid-dry
G1 E106.41060 F1500; retract filament
G1 X147.025 Y98.973 F5400; rapid
G1 E107.41060 F1500; engage filament
; bead-sparse_infill
G1 X147.197 Y98.801 E107.41869 F4800
G1 Y95.972 E107.51276
G1 X144.200 Y98.969 E107.65370
G1 X141.376 Y98.965 E107.74765
G1 X147.197 Y93.144 E108.02145
G1 Y90.315 E108.11552
G1 X138.551 Y98.961 E108.52219
G1 X135.727 Y98.957 E108.61613
G1 X146.808 Y87.876 E109.13736
G1 X143.983 Y87.872 E109.23131
G1 X132.902 Y98.953 E109.75254
G1 X130.078 Y98.949 E109.84649
G1 X141.159 Y87.868 E110.36772
G1 X138.334 Y87.864 E110.46166
G1 X127.253 Y98.946 E110.98289
G1 X124.428 Y98.942 E111.07684
G1 X135.510 Y87.860 E111.59807
G1 X132.685 Y87.857 E111.69202
G1 X121.604 Y98.938 E112.21325
G1 X118.779 Y98.934 E112.30720
G1 X129.861 Y87.853 E112.82843
G1 X127.036 Y87.849 E112.92237
G1 X115.955 Y98.930 E113.44360
G1 X113.130 Y98.926 E113.53755
G1 X124.211 Y87.845 E114.05878
G1 X121.387 Y87.841 E114.15273
G1 X110.306 Y98.922 E114.67396
G1 X107.481 Y98.919 E114.76791
G1 X118.562 Y87.837 E115.28914
G1 X115.738 Y87.833 E115.38308
G1 X104.656 Y98.915 E115.90431
G1 X101.832 Y98.911 E115.99826
G1 X112.913 Y87.830 E116.51949
G1 X110.089 Y87.826 E116.61343
G1 X99.007 Y98.907 E117.13467
G1 X96.183 Y98.903 E117.22861
G1 X107.264 Y87.822 E117.74985
G1 X104.439 Y87.818 E117.84379
G1 X93.358 Y98.899 E118.36502
G1 X90.534 Y98.895 E118.45897
G1 X101.615 Y87.814 E118.98019
G1 X98.790 Y87.810 E119.07414
G1 X87.709 Y98.892 E119.59538
G1 X84.884 Y98.888 E119.68932
G1 X95.966 Y87.806 E120.21056
G1 X93.141 Y87.803 E120.30450
G1 X82.060 Y98.884 E120.82573
G1 X79.235 Y98.880 E120.91968
G1 X90.317 Y87.799 E121.44090
G1 X87.492 Y87.795 E121.53485
G1 X76.411 Y98.876 E122.05608
G1 X73.586 Y98.872 E122.15003
G1 X84.667 Y87.791 E122.67126
G1 X81.843 Y87.787 E122.76521
G1 X70.762 Y98.868 E123.28644
G1 X67.937 Y98.865 E123.38039
G1 X79.018 Y87.783 E123.90161
G1 X76.194 Y87.779 E123.99556
G1 X65.088 Y98.885 E124.51793
; bead-sparse_infill
; rapid-dry
G1 E123.51792 F1500; retract filament
G1 X50.773 Y87.745 F5400; rapid
G1 E124.51793 F1500; engage filament
; bead-sparse_infill
G1 X21.931 Y116.586 E125.87455 F4800
G1 Y113.758 E125.96862
G1 X47.948 Y87.741 E127.19238
G1 X45.124 Y87.737 E127.28633
G1 X21.931 Y110.929 E128.37724
G1 Y108.101 E128.47131
G1 X42.299 Y87.733 E129.42935
G1 X39.474 Y87.729 E129.52330
G1 X21.931 Y105.273 E130.34848
G1 Y102.444 E130.44255
G1 X36.650 Y87.725 E131.13489
G1 X33.825 Y87.721 E131.22882
G1 X21.931 Y99.616 E131.78830
G1 Y96.787 E131.88237
G1 X31.001 Y87.718 E132.30898
G1 X28.176 Y87.714 E132.40292
G1 X21.931 Y93.959 E132.69667
G1 Y91.130 E132.79074
G1 X25.352 Y87.710 E132.95164
G1 X22.527 Y87.706 E133.04559
G1 X21.931 Y88.302 E133.07361
; bead-sparse_infill
G92 E0
G1 E-1.00000 F1500
G1 Z2.200 F5400; move up from layer plane
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0
G4 P0