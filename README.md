# Programs and files got custom CNC Sprayer

Custom CNC Sprayer running Mach3.

## Programs

| Program       | Description     | Status | Progress      |
| :------------ | :-------------- | :----- | :------------ |
| Quadrant A    | Working program | ✅     | Version 2     |
| Quadrant B    | Working program | ✅     | Processing V2 |
| Quadrant C    | Working program | ✅     | Processing V2 |
| Quadrant D    | Working program | ✅     | Processing V2 |
| Quadrant AB   | Working program | ✅     | Version 2     |
| Quadrant AC   | Working program | ✅     | Version 2     |
| Quadrant BD   | Working program | ✅     | Processing V2 |
| Quadrant CD   | Working program | ✅     | Processing V2 |
| Quadrant ABCD | Working program | ✅     | Version 2     |

## TODO: Miscellaneous

- Move the starting position "Home" as the machine has been rotated 180 degrees
- Output new coordinates after each move

## Mach3 G-code Information

- [PDF format](https://machmotion.com/documentation/Software/Mach3/Mach3%20G-Code%20Manual.pdf) G-Code guide for Mach3
- [Cheat Sheet](https://www.cnczone.com/forums/attachments/2/4/5/7/8/2/171224.attach) for quick reference

## G-Code Reference

- G-Code commands

`G0` = Rapid move </br>
`G1` = Interpolation move </br>
`G2` = Clockwise arc </br>
`G3` = Counterclockwise arc </br>
`G17` = Begin/End 'Canned Cycle' </br>
`G19` = Ramp operation </br>
`G20` = Set machine to inches </br>
`G28` = Operator home </br>
`G94` = Set the machine to units per minute </br>

- M-Code commands

`M3` = Sprayer off </br>
`M5` = Sprayer on </br>
`M30` = End and reset program </br>

- Other commands

`F###` = Feedrate followed by desired feedrate 'F500' </br>
`T#` = Select tool 'T1' </br>

### Default Work Zero

- Y0.125
- X0.125
- Z-0.125

## Mach3

- Find Mach3 at [MachSupport.com](https://www.machsupport.com/software/mach3/)

---

---

Copyright©️ 2024 </br>
SafetyDav3 </br>
LaserFac3 </br>
All Rights Reserved. </br>
