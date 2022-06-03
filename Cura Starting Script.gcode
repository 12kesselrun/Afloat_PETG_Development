;This G-Code has been generated specifically for the LulzBot TAZ 6 with Aerosturder
M73 P0 ; clear GLCD progress bar
M75 ; start GLCD timer
M501 ; load settings from EEPROM
G90 ; absolute positioning
M82 ; set extruder to absolute mode
M900 K0.15 ; Set linear advance k-factor for PETG
G92 E0 ; set extruder position to 0
M140 S{material_bed_temperature_layer_0} ; start heating bed
G28 X Y ; Home X and Y axes - don't home z so it won't lose ABL measurements
M420 S1 ; make sure the bed level matrix is activated
G1 X-19 Y130 F10000 ; move to start position
G4 S1 ; pause
M400 ; wait for moves to finish
G1 Z2 E0 F75
M117 Heating...
M190 S{material_bed_temperature_layer_0} ; stabilize bed
M109 S{material_print_temperature_layer_0} ; stabilize extruder
G1 E25 F400 ; Prime the extruder
G1 X15 F5000 ; Move onto the bed
G4 S4 ; Let the primed plastic drip below the bed
M117 Taz Printing...
