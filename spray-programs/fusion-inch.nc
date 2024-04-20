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
G0 X39.9 Y-16.9507 (Rapid move)
G43 Z0.6 H1	(This line is used to start a drilling cycle. The Z0.6 value sets the depth of the drill to 0.6 inches, and H1 sets the drill speed to high. The H1 value is a constant that represents a specific drill speed.)
G0 Z0.56 (Rapid move to Z-axis height)
G18 G3 X39.3 Z-0.04 I-0.6 K0. F40. (Arc from current position C=39.3 X,Y to Z=-0.04, I is the radius of the arc, K is the ending angle.)
G1 X39.0004 (Move to X=39.0004)
X-39.0004 (Move to X=-39.0004)
G17 G2 Y-12.9433 I0. J2.0037 (Arc from current position C=Y=-12.9433 to I0, J is the ending angle.)
G1 X39.0004 (Move to X=39.0004)
G3 Y-8.936 I0. J2.0037 (Arc I0 to J2.0037)
G1 X-39.0004 (Move to X=-39.0004)
G2 Y-4.9287 I0. J2.0037 (Arc I0 to J2.0037)
G1 X39.0004 (Move to X=39.0004)
G3 Y-0.9213 I0. J2.0037 (Arc I0 to J2.0037)
G1 X-39.0004 (Move to X=-39.0004)
G2 Y3.086 I0. J2.0037 (Arc I0 to J2.0037)
G1 X39.0004 (Move to X=39.0004)
G3 Y7.0933 I0. J2.0037 (Arc I0 to J2.0037)
G1 X-39.0004 (Move to X=-39.0004)
G2 Y11.1007 I0. J2.0037 (Arc I0 to J2.0037)
G1 X39.0004 (Move to X=39.0004)
G3 Y15.108 I0. J2.0037 (Arc I0 to J2.0037)
G1 X-39.0004 (Move to X=-39.0004)
G18 G3 X-39.6004 Z0.56 I0. K0.6 (Arc from current position C=X=-39.6004 to Z=0.56, I is the radius of the arc, K is the ending angle.)
G0 Z0.6 (Move to Z=0.6)
G17 (Select XY-plane)

(End program)
M5
G28 G91 Z0.
G90
G28 G91 X0. Y0.
G90
M30
