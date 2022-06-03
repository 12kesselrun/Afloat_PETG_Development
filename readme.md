# README
## INSTRUCTIONS
- Replace starting G-Code script with "Cura Starting Script.gcode" (copy and paste contents into *Settings > Printer > Manage Printers > Machine Settings > Start Gcode*)
- Replace ending G-Code script with "Cura Ending Script.gcode" (copy and paste contents into *Settings > Printer > Manage Printers > Machine Settings > End Gcode*)
- Run LTAZ6_Nozzle_Cleaning.gcode on Taz 6 (wipe nozzle with scotch brite pad while it cools from 240C to 170C)
- Run LTAZ6_Nozzle_Calibration.gcode

## NOTES
- The bed level calibration values are maintained between prints but are lost when the printer is powered off
- The nozzle calibration routine ends by moving to 0.5mm above the bed (for a feeler gauge test)
