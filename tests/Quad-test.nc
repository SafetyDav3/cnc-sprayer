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
G20 (Set machine to inches)

(Body of program)
G00 Z-0 (Move Z-axis to home position)

(End of program)
G28 X0 Y12 Z0 F250 (Return to the operator work position)
M30 (Close program and reset)