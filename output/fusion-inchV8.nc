(Spray Program)
(Face-mill operation conversion)
(   SafetyDav3 Automation)
(   3-Axis CNC Sprayer running Mach3)
(   6 inch spray pattern with a 3 inch step-over)

G90 G94 G91.1 G40 G49 G17 (Set work coordinates to Absolute && Set machine to units-per-minute && Set Arc-Mode to incremental [G90.1 for Absolute] && Turn off Cutter compensation && Set tool offset to NONE && Select XY-plane)
G20 (Set units to Inches [G21 to set units to Millimeters])
G28 G91 Z0. (Return home && Set work coordinates to Incremental && Move Z-axis to zero position)
G90 (Set work coordinates to Absolute)

(FACE1)
T1 M6 (Tool one && Tool change)
S5000 M3 (Start Spindle at 5000rpm && Rotate spindle clockwise [M4 for counter-clockwise])
G17 G90 G94 (Select XY-plane && Set work coordinates to Absolute [G91 is incremental] && Set machine to units-per-minute)
G54 (Select work offset #1)

(Program run)
G0 X0 Y16 Z-0.06 (Rapid move)
G43 Z0 H1 (Set tool offset to 0 on tool #1)
G0 Z-6 (Rapid move to Z-axis height)
G18 G3 Y60 Z0.06 I2.0037 K0. F200. (Arc from current position C=39.3 X,Y to Z=-0.04, I is the radius of the arc, K is the ending angle.)
G1 Y60
G1 Y-60
G17 G2 X-12.9433 J0. I2.0037
G1 Y60
G3 X-8.936 J0. I2.0037
G1 Y-60
G2 X-4.9287 J0. I2.0037
G1 Y60
G3 X-0.9213 J0. I2.0037
G1 Y-60
G2 X3.086 J0. I2.0037
G1 Y60
G3 X7.0933 J0. I2.0037
G1 Y-60
G2 X11.1007 J0. I2.0037
G1 Y60
G3 X15.108 J0. I2.0037
G1 Y-60
G18 G3 Y-60 Z0 I2.0037 K0
G0 Z0
G17 (Select XY-plane)

(End program)
M5 (End spraying)
G28 G91 Z0. (Return to Z-axis home)
G90 (Set work coordinates to absolute)
G28 G91 X0. Y0. (Return to X,Y-axis home)
G90 (Set work coordinates to absolute)
M30 (Close program and reset)
