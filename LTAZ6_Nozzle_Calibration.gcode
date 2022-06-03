M501; Load EEPROM settings
M206 Z0 ; Zero out the Z home offset
M500 ; Save settings to EEPROM
M420 S0 ; Turn off previous Automatic Bed Leveling matrix
M425 S0 ; Turn off Z backlash compensation
G26 ; Clear potential "probe fail" condition
M107 ; Disable fans
G28
G90 ; absolute coordinates
G1 X-9 Y-9 F4800 ; Move above first touch point
M204 S100 ; set probing acceleration
G29
M204 S500 ; set printing acceleration
M420 S1 ; Turn on Automatic Bed Leveling
M425 Z ; Use measured Z backlash compensation
M500
G0 X150 Y50 ; Move to center of bed for feeler gauge check
G0 Z0.5 F50
