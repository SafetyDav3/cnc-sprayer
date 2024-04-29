%
ORECTANGLE(Square/Rectangle)
(Specify pierce point inside or outside)
#139=1(0=pierce inner, 1=pierce outer)
(0)
#140=26.00(Width Y-AXIS)
#141=2.00(Height X-AXIS)
#142=0.25(lead-in length)
#144=0.125(Corner-radius)
#145=.025(Micro-joint)
#146=9010(pierce routine)
#501=108(Cutting-condition)
#2001=.008(Offset)
()
IF[#139EQ1]GOTO20
N10(pierce innner)
#143=42(Offset G42)
G90G92X0Y0
G00X[#140/2]Y#142
M66
M101M80
M98P#146
G1G#143Y0D1
X0,R#144
Y#141,R#144
X#140,R#144
Y0,R#144
X#140/2+#145
M121
M74
G28Z0
G0G40X#140+.25Y0(move right)
(G0G40X0Y#141+.25(move up)
GOTO50
N20(pierce outer)
#143=41(Offset G41)
G90G92X0Y0
G00X[#140/2]Y[#141+#142]
M66
M101M80
M98P#146
G1G#143Y#141D1
X#140,R#144
Y0,R#144
X0,R#144
Y#141,R#144
X#140/2-#145
M121
M74
G28Z0
G0G40X#140+.25Y0(move right)
(G0G40X0Y#141+#142+.25(move up)
N50
G69
M30
(2019-04-30, UPDATED W/NEW VARIABLES, JA)
(2019-06-03, changed leader direction on ID, JA)
(2021-02-18, leader at 9:00 for GXF)
(2022-08-19, added INNER/OUTER options, JA)
%
