%
OWASHER(Washer-CenterStart)
#140=.625(I.D.)
#141=.02(I.D.-lead-in-length)
#142=.020(I.D.-micro-joint)
#143=107(I.D.-cutting-condition)
#144=9010(I.D.-pierce-routine)
#2001=.004(I.D.-offset)
()
#146=1.25(O.D.)
#147=.100(O.D.-lead-in-length)
#148=.040(O.D.-micro-joint)
#149=108(O.D.-cutting-condition)
#150=9010(O.D.-pierce-routine)
#2002=.007(O.D.-offset)
#152=[#146-#140]/2
()
#153=[SQRT[#140/2*#140/2-#142*#142]]
#154=[SQRT[#146/2*#146/2-#148*#148]]
()
G90G92X#146/2Y#146/2
G00X#146/2Y#146/2-[#140/2-#141]
M66
#501=#143
M101M80
M98P#144
G1G42Y#146/2-[#140/2]D1
G2X#146/2+#142Y#146/2-#153R-#140/2
M121
M199
()
G0G40X#146/2Y#146+#147
#501=#149
M98P#150
G1G42Y#146D2
G3X#146/2+#148Y#146/2+#154R-#146/2
M121
M74
G28Z0
G0G40X#146*1.5+.25Y#146/2(move right)
(G0G40X#146/2Y#146*1.5+#147+.25(move up)
M02
(2019-04-30, UPDATED W/NEW VARIABLES, JA)
(2019-06-03, changed leader direction on ID, JA)
(2022-08-19, modified move to next part)
%
