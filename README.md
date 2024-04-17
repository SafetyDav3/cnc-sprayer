# Programs and files got custom CNC Sprayer

Custom CNC Sprayer running Mach3.

## Programs

| Program        | Description     | Status | Progress    |
| :------------- | :-------------- | :----- | :---------- |
| Quadrant 1     | in progress     | ⛔     | Started     |
| Quadrant 2     | TODO            | ⛔     | Not started |
| Quadrant 3     | TODO            | ⛔     | Not started |
| Quadrant 4     | Working program | ⛔     | Not started |
| Quadrant 1 & 2 | Working program | ⛔     | Not started |
| Quadrant 1 & 3 | Working program | ⛔     | Not started |
| Quadrant 2 & 4 | Working program | ⛔     | Not started |
| Quadrant 3 & 4 | Working program | ⛔     | Not started |
| Quadrant All   | Working program | ⛔     | Not started |

## Mach3 G-code Information

- [PDF format](https://machmotion.com/documentation/Software/Mach3/Mach3%20G-Code%20Manual.pdf) G-Code guide for Mach3
- [Cheat Sheet](https://www.cnczone.com/forums/attachments/2/4/5/7/8/2/171224.attach) for quick reference

## G-Code Reference

    G00 = Rapid move
    G01 = Interpolation move
    F### = Feedrate followed by desired feedrate 'F500'
    M3 =  Sprayer off
    M5 = Sprayer on
    M30 = End and reset program

## Mach3

- Find Mach3 at [MachSupport.com](https://www.machsupport.com/software/mach3/)

### Default Work Zero

- Y12
- X0
- Z0
