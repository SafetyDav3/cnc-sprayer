%
OCIRCLE(Circle)
(Specify pierce point inside or outside)
#139=0(0=pierce inner, 1=pierce outer)
()
#140=.6250(Diameter)
#141=.06(lead-in-length)
#142=.042(micro-joint)
#501=108(cutting-condition)
#144=9009(pierce routine)
#2002=.007(offset)
#146=[SQRT[#140/2*#140/2-#142*#142]]
()
IF[#139EQ1]GOTO20
N10(pierce innner)
#143=42(Offset G42)
G90G92X0Y0
G0G40X#140/2Y#141
M66
M101M80
M98P9010
G1G#143Y0D2
G2X#140/2+#142Y#140/2-#146R-#140/2
M121
M74
G28Z0
G0G40X#140+.25Y0(move right)
(G0G40X0Y#140+.25(move up)
GOTO50
N20(pierce OUTER)
#143=41(Offset G41)
G90G92X0Y0
G0G40X#140/2Y#140+#141
M66
M101M80
M98P9010
G1G#143Y#140D2
G2X#140/2-#142Y#140/2+#146R-#140/2
M121
M74
G28Z0
G0G40X#140+.25Y0(move right)
(G0G40X0Y#140+#141+.25(move up)
N50
M02
(2019-04-30, UPDATED W/NEW VARIABLES, JA)
(2019-10-25, changed leader direction on ID, JA)
(2021-02-18, leader at 9:00 for GXF)
(2022-08-19, added INNER/OUTER options, JA)
%
