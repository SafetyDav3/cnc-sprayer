; Notes for use
;   G00 = Rapid move
;   G01 = Interpolation move
;   F### = Feedrate followed by desired feedrate 'F500'
;   M3 =  Sprayer off
;   M5 = Sprayer on
;   M30 = End and reset program

(Test for setup)
(Head of program)
G94 (Set the machine to units per minute)

(Body of program)
G00 Z-0 (Move Z-axis to home position)

(End of program)
G00 Z0 (Return to home Z-axis)
X0 Y0 (Return to home X-axis and Y-axis)
M30 (Close program and reset)