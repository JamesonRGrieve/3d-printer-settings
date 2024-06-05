M104 S170 ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
G28 ; home all axes
M190 S[first_layer_bed_temperature] ; wait for bed temp
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G92 E0
G1 X10 Y-3 Z[first_layer_height] F1000 ; go outside print area
G1 X60 E9 F1000 ; intro line
G1 X90 E12 F1000 ; intro line
G1 X120 Z0.1 F1000 ; intro line
G92 E0
G1 Z5 F5000 ; lift nozzle
