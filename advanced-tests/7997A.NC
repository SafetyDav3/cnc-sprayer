%
O7997A(NestedShtCutoff)
(7997a)
#501=107(Cutting condition)
#136=.375(Distance to move on/off sheet)
M75
()
(Can-pick-up-8-points)
(Manually move to each point and press START)
(RULE: First and last moves cannot be angle moves)
(After picking up last point, press START again)
(Head will move back to beginning and start cutting)
()
#114=0#115=0#116=0#117=0#118=0#119=0#120=0#121=0
#122=0#123=0#124=0#125=0#126=0#127=0#128=0#129=0
#130=0#131=0
#132=0#133=0#134=0#135=0
#140=0#141=0#142=0#143=0
()
#114=#5021#115=#5022(1st point on sheet)
M0
#116=#5021#117=#5022(2nd point on sheet)
M0
#118=#5021#119=#5022(3rd point on sheet)
IF[#118EQ#116]AND[#119EQ#117]GOTO10(if 2-pt cutoff)
M0
#120=#5021#121=#5022(4th point on sheet)
IF[#120EQ#118]AND[#121EQ#119]GOTO3(if 3-pt cutoff)
M0
#122=#5021#123=#5022(5th point on sheet)
IF[#122EQ#120]AND[#123EQ#121]GOTO10(if 4-pt cutoff)
M0
#124=#5021#125=#5022(6th point on sheet)
IF[#124EQ#122]AND[#125EQ#123]GOTO10(if 5-pt cutoff)
M0
#126=#5021#127=#5022(7th point on sheet)
IF[#126EQ#124]AND[#127EQ#125]GOTO10(if 6-pt cutoff)
M0
#128=#5021#129=#5022(8th point on sheet)
IF[#128EQ#126]AND[#129EQ#127]GOTO10(if 7-pt cutoff)
M0
#130=#5021#131=#5022(9th point on sheet)
IF[#130EQ#128]AND[#131EQ#129]GOTO10(if 8-pt cutoff)
M0
()
()
(*** section below only for 3-point "L" cutoffs ***)
N3(3-point: determines X or Y direction for 1st/last moves)
(determine starting direction)
IF[#114EQ#116]GOTO40(starting direction is Y)
IF[#116-#114GT0]GOTO32
(X- starting direction)
IF[#119-#117GT0]GOTO30(ending direction is X)
#142=1(ending direction is Y-)
GOTO60(starting direction is X-)
N30#143=1(ending direction is Y+)
GOTO60(starting direction is X-)
N32(X+ starting direction)
IF[#119-#117GT0]GOTO33
#142=1(ending direction is Y-)
GOTO70(starting direction is X+)
N33#143=1(ending direction is Y+)
GOTO70(starting direction is X+)
N40(starting direction is Y)
IF[#117-#115GT0]GOTO44
IF[#118-#116GT0]GOTO42(Y- starting direction)
#140=1(ending direction is X-)
GOTO80(starting direction is Y-)
N42#141=1(ending direction is X+)
GOTO80(starting direction is Y-)
N44(Y+ starting direction)
IF[#118-#116GT0]GOTO46
#140=1(ending direction is X-)
GOTO90(starting direction is X+)
N46#141=1(ending direction is X+)
GOTO90(starting direction is X+)
()
N10(determines if X or Y direction for 1st move)
G53G0Z0
IF[#116NE#114]GOTO60(X direction 1st move)
IF[#117NE#115]GOTO80(Y direction 1st move)
()
(*** section below for 1st move direction ***)
N60(X)
G53G0Z0
IF[#116GT#114]GOTO70
G0G53X#114-#136Y#115
G90G92X#114-#136Y#115
#132=1(flag for X- direction cutoff)
M66M80
M198M#501
M74
G0X#114+#136Y#115(move off sheet)
M86
G1X#114-#136Y#115(move onto sheet +#136)
M75
GOTO100
()
N70(X+)
G53G0Z0
G0G53X#114+#136Y#115
G90G92X#114+#136Y#115
#133=1(flag for X+ direction cutoff)
M66M80
M198M#501
M74
G0X#114-#136Y#115(move off sheet)
M86
G1X#114+#136Y#115(move onto sheet +#136)
M75
GOTO100
()
N80(Y)
G53G0Z0
IF[#117GT#115]GOTO90
G0G53X#114Y#115-#136
G90G92X#114Y#115-#136
#134=1(flag for Y- direction cutoff)
M66M80
M198M#501
M74
G0X#114Y#115+#136(move off sheet)
M86
G1X#114Y#115-#136(move onto sheet +#136)
M75
GOTO100
()
N90(Y+)
G53G0Z0
G0G53X#114Y#115+#136
G90G92X#114Y#115+#136
#135=1(flag for Y+ direction cutoff)
M66M80
M198M#501
M74
G0X#114Y#115-#136(move off sheet)
M86
G1X#114Y#115+#136(move onto sheet +#136)
M75
GOTO100
()
N100
(Cutoff movement starts here. Head already onto sheet at this pt)
IF[#118EQ#116]AND[#119EQ#117]GOTO200(2-pt cutoff)
IF[#120EQ#118]AND[#121EQ#119]GOTO300(3-pt cutoff)
IF[#122EQ#120]AND[#123EQ#121]GOTO400(4-pt cutoff)
IF[#124EQ#122]AND[#125EQ#123]GOTO500(5-pt cutoff)
IF[#126EQ#124]AND[#127EQ#125]GOTO600(6-pt cutoff)
IF[#128EQ#126]AND[#129EQ#127]GOTO700(7-pt cutoff)
IF[#130EQ#128]AND[#131EQ#129]GOTO800(8-pt cutoff)
()
N200(*****2-point cutoff*****)
()
IF[#116-#114EQ0]GOTO226 (it's a Y cutoff)
IF[#116-#114GT0]GOTO222 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#116+#136Y#117(start X- cutoff here)
M74
G53G1X#116-#136Y#117
GOTO999
N222G53G1X#116-#136Y#117(start X+ cutoff here)
M74
G53G1X#116+#136Y#117
GOTO999
()
N226(Y cutoff section below)
IF[#117-#115GT0]GOTO228(it's a Y+ cutoff)
G53G1X#116Y#117+#136(start Y- cutoff here)
M74
G53G1X#116Y#117-#136
GOTO999
N228G53G1X#116Y#117-#136(start Y+ cutoff here)
M74
G53G1X#116Y#117+#136
GOTO999
()
N300(*****3-point cutoff*****)
()
G53G1X#116Y#117
IF[#118-#116EQ0]GOTO326 (it's a Y cutoff)
IF[#118-#116GT0]GOTO322 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#118+#136Y#119(start X- cutoff here)
M74
G53G1X#118-#136Y#119
GOTO999
N322G53G1X#118-#136Y#119(start X+ cutoff here)
M74
G53G1X#118+#136Y#119
GOTO999
()
N326(Y cutoff section below)
IF[#119-#117GT0]GOTO328(it's a Y+ cutoff)
G53G1X#118Y#119+#136(start Y- cutoff here)
M74
G53G1X#118Y#119-#136
GOTO999
N328G53G1X#118Y#119-#136(start Y+ cutoff here)
M74
G53G1X#118Y#119+#136
GOTO999
()
N400(*****4-point cutoff*****)
()
G53G1X#116Y#117
G53G1X#118Y#119
IF[#120-#118EQ0]GOTO426 (it's a Y cutoff)
IF[#120-#118GT0]GOTO422 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#120+#136Y#121(start X- cutoff here)
M74
G53G1X#120-#136Y#121
GOTO999
N422G53G1X#120-#136Y#121(start X+ cutoff here)
M74
G53G1X#120+#136Y#121
GOTO999
()
N426(Y cutoff section below)
IF[#121-#119GT0]GOTO428(it's a Y+ cutoff)
G53G1X#120Y#121+#136(start Y- cutoff here)
M74
G53G1X#120Y#121-#136
GOTO999
N428G53G1X#118Y#119(start Y+ cutoff here)
G53G1X#120Y#121-#136
M74
G53G1X#120Y#121+#136
GOTO999
()
N500(*****5-point cutoff*****)
()
G53G1X#116Y#117
G53G1X#118Y#119
G53G1X#120Y#121
IF[#122-#120EQ0]GOTO526 (it's a Y cutoff)
IF[#122-#120GT0]GOTO522 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#122+#136Y#123(start X- cutoff here)
M74
G53G1X#122-#136Y#123
GOTO999
N522G53G1X#122-#136Y#123(start X+ cutoff here)
M74
G53G1X#122+#136Y#123
GOTO999
()
N526(Y cutoff section below)
IF[#123-#121GT0]GOTO528(it's a Y+ cutoff)
G53G1X#122Y#123+#136(start Y- cutoff here)
M74
G53G1X#122Y#123-#136
GOTO999
N528G53G1X#120Y#121(start Y+ cutoff here)
G53G1X#122Y#123-#136
M74
G53G1X#122Y#123+#136
GOTO999
()
N600(*****6-point cutoff*****)
()
G53G1X#116Y#117
G53G1X#118Y#119
G53G1X#120Y#121
G53G1X#122Y#123
IF[#124-#122EQ0]GOTO626 (it's a Y cutoff)
IF[#124-#122GT0]GOTO622 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#124+#136Y#125(start X- cutoff here)
M74
G53G1X#124-#136Y#125
GOTO999
N622G53G1X#124-#136Y#125(start X+ cutoff here)
M74
G53G1X#124+#136Y#125
GOTO999
()
N626(Y cutoff section below)
IF[#125-#123GT0]GOTO628(it's a Y+ cutoff)
G53G1X#124Y#125+#136(start Y- cutoff here)
M74
G53G1X#124Y#125-#136
GOTO999
N628G53G1X#122Y#123(start Y+ cutoff here)
G53G1X#124Y#125-#136
M74
G53G1X#124Y#125+#136
GOTO999
()
N700(*****7-point cutoff*****)
()
G53G1X#116Y#117
G53G1X#118Y#119
G53G1X#120Y#121
G53G1X#122Y#123
G53G1X#124Y#125
IF[#126-#124EQ0]GOTO726 (it's a Y cutoff)
IF[#126-#124GT0]GOTO722 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#126+#136Y#127(start X- cutoff here)
M74
G53G1X#126-#136Y#127
GOTO999
N722G53G1X#126-#136Y#127(start X+ cutoff here)
M74
G53G1X#126+#136Y#127
GOTO999
()
N726(Y cutoff section below)
IF[#127-#125GT0]GOTO728(it's a Y+ cutoff)
G53G1X#126Y#127+#136(start Y- cutoff here)
M74
G53G1X#126Y#127-#136
GOTO999
N728G53G1X#124Y#125(start Y+ cutoff here)
G53G1X#126Y#127-#136
M74
G53G1X#126Y#127+#136
GOTO999
()
N800(*****8-point cutoff*****)
()
G53G1X#116Y#117(this is 8th point, and last for X-)
G53G1X#118Y#119
G53G1X#120Y#121
G53G1X#122Y#123
G53G1X#124Y#125
G53G1X#126Y#127
IF[#128-#126EQ0]GOTO826 (it's a Y cutoff)
IF[#128-#126GT0]GOTO822 (it's a X+ cutoff)
()
(X cutoff section below)
G53G1X#128+#136Y#129(start X- cutoff here)
M74
G53G1X#128-#136Y#129
GOTO999
N822G53G1X#128-#136Y#129(start X+ cutoff here)
M74
G53G1X#128+#136Y#129
GOTO999
()
N826(Y cutoff section below)
IF[#129-#127GT0]GOTO828(it's a Y+ cutoff)
G53G1X#128Y#129+#136(start Y- cutoff here)
M74
G53G1X#128Y#129-#136
GOTO999
N828G53G1X#126Y#127(start Y+ cutoff here)
G53G1X#128Y#129-#136
M74
G53G1X#128Y#129+#136
()
N999M121
M199
M75
M67
G53G0Z0
M30
%
