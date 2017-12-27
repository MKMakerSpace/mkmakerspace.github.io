;prepare positions
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G28 X0 Y0 ;move X/Y to min endstops

M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp

G28 Z0 ;move Z to min endstops

M420 S1 ; ensures auto leveling is enabled
G29; Auto Bed Level

G0 X0 Y-5 F9000 ; Go to front
G0 Z0.15 ; Drop to bed
G92 E0 ; zero the extruded length
G1 X80 E50 F500 ; Extrude 50mm of filament in a 8cm line
G92 E0 ; zero the extruded length
G1 E-1 F500 ; Retract a little
G1 X80 F4000 ; Quickly wipe away from the filament line
G1 Z0.3 ; Raise and begin printing.

M117 Printing...
