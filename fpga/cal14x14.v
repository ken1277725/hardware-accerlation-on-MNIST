module conv14x14(data , dPstate , core ,out);
    input data;
    input dPstate;
    input core ;
    output out;



dotProduct dot1(dPin , core , 0 , 0 , d); 

always @* begin

case(dPState)
case(dPState)
0 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,0 ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,0 ,0 ,data[231:224] ,data[239:232] ,data[247:240] };
end
1 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] };
end
2 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] };
end
3 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] };
end
4 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] };
end
5 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] };
end
6 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] };
end
7 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] };
end
8 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] };
end
9 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] };
end
10 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] };
end
11 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] };
end
12 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,0 ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,0 };
end
13 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[95:88] ,data[103:96] ,data[111:104] ,0 ,0 ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,0 ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,0 };
end
14 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,0 ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,0 ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,0 ,0 ,data[343:336] ,data[351:344] ,data[359:352] };
end
15 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] };
end
16 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] };
end
17 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] };
end
18 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] };
end
19 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] };
end
20 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] };
end
21 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] };
end
22 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] };
end
23 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] };
end
24 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] };
end
25 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] };
end
26 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,0 ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,0 };
end
27 :begin
 dPIn = {0 ,0 ,0 ,0 ,0 ,data[95:88] ,data[103:96] ,data[111:104] ,0 ,0 ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,0 ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,0 ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,0 };
end
28 :begin
 dPIn = {0 ,0 ,data[7:0] ,data[15:8] ,data[23:16] ,0 ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,0 ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,0 ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,0 ,0 ,data[455:448] ,data[463:456] ,data[471:464] };
end
29 :begin
 dPIn = {0 ,data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] };
end
30 :begin
 dPIn = {data[7:0] ,data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] };
end
31 :begin
 dPIn = {data[15:8] ,data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] };
end
32 :begin
 dPIn = {data[23:16] ,data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] };
end
33 :begin
 dPIn = {data[31:24] ,data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] };
end
34 :begin
 dPIn = {data[39:32] ,data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] };
end
35 :begin
 dPIn = {data[47:40] ,data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] };
end
36 :begin
 dPIn = {data[55:48] ,data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] };
end
37 :begin
 dPIn = {data[63:56] ,data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] };
end
38 :begin
 dPIn = {data[71:64] ,data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] };
end
39 :begin
 dPIn = {data[79:72] ,data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] };
end
40 :begin
 dPIn = {data[87:80] ,data[95:88] ,data[103:96] ,data[111:104] ,0 ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,0 };
end
41 :begin
 dPIn = {data[95:88] ,data[103:96] ,data[111:104] ,0 ,0 ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,0 ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,0 ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,0 ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,0 };
end
42 :begin
 dPIn = {0 ,0 ,data[119:112] ,data[127:120] ,data[135:128] ,0 ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,0 ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,0 ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,0 ,0 ,data[567:560] ,data[575:568] ,data[583:576] };
end
43 :begin
 dPIn = {0 ,data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] };
end
44 :begin
 dPIn = {data[119:112] ,data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] };
end
45 :begin
 dPIn = {data[127:120] ,data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] };
end
46 :begin
 dPIn = {data[135:128] ,data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] };
end
47 :begin
 dPIn = {data[143:136] ,data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] };
end
48 :begin
 dPIn = {data[151:144] ,data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] };
end
49 :begin
 dPIn = {data[159:152] ,data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] };
end
50 :begin
 dPIn = {data[167:160] ,data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] };
end
51 :begin
 dPIn = {data[175:168] ,data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] };
end
52 :begin
 dPIn = {data[183:176] ,data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] };
end
53 :begin
 dPIn = {data[191:184] ,data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] };
end
54 :begin
 dPIn = {data[199:192] ,data[207:200] ,data[215:208] ,data[223:216] ,0 ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,0 };
end
55 :begin
 dPIn = {data[207:200] ,data[215:208] ,data[223:216] ,0 ,0 ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,0 ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,0 ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,0 ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,0 };
end
56 :begin
 dPIn = {0 ,0 ,data[231:224] ,data[239:232] ,data[247:240] ,0 ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,0 ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,0 ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,0 ,0 ,data[679:672] ,data[687:680] ,data[695:688] };
end
57 :begin
 dPIn = {0 ,data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] };
end
58 :begin
 dPIn = {data[231:224] ,data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] };
end
59 :begin
 dPIn = {data[239:232] ,data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] };
end
60 :begin
 dPIn = {data[247:240] ,data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] };
end
61 :begin
 dPIn = {data[255:248] ,data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] };
end
62 :begin
 dPIn = {data[263:256] ,data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] };
end
63 :begin
 dPIn = {data[271:264] ,data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] };
end
64 :begin
 dPIn = {data[279:272] ,data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] };
end
65 :begin
 dPIn = {data[287:280] ,data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] };
end
66 :begin
 dPIn = {data[295:288] ,data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] };
end
67 :begin
 dPIn = {data[303:296] ,data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] };
end
68 :begin
 dPIn = {data[311:304] ,data[319:312] ,data[327:320] ,data[335:328] ,0 ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,0 };
end
69 :begin
 dPIn = {data[319:312] ,data[327:320] ,data[335:328] ,0 ,0 ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,0 ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,0 ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,0 ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,0 };
end
70 :begin
 dPIn = {0 ,0 ,data[343:336] ,data[351:344] ,data[359:352] ,0 ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,0 ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,0 ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,0 ,0 ,data[791:784] ,data[799:792] ,data[807:800] };
end
71 :begin
 dPIn = {0 ,data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] };
end
72 :begin
 dPIn = {data[343:336] ,data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] };
end
73 :begin
 dPIn = {data[351:344] ,data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] };
end
74 :begin
 dPIn = {data[359:352] ,data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] };
end
75 :begin
 dPIn = {data[367:360] ,data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] };
end
76 :begin
 dPIn = {data[375:368] ,data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] };
end
77 :begin
 dPIn = {data[383:376] ,data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] };
end
78 :begin
 dPIn = {data[391:384] ,data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] };
end
79 :begin
 dPIn = {data[399:392] ,data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] };
end
80 :begin
 dPIn = {data[407:400] ,data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] };
end
81 :begin
 dPIn = {data[415:408] ,data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] };
end
82 :begin
 dPIn = {data[423:416] ,data[431:424] ,data[439:432] ,data[447:440] ,0 ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,0 };
end
83 :begin
 dPIn = {data[431:424] ,data[439:432] ,data[447:440] ,0 ,0 ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,0 ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,0 ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,0 ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,0 };
end
84 :begin
 dPIn = {0 ,0 ,data[455:448] ,data[463:456] ,data[471:464] ,0 ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,0 ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,0 ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,0 ,0 ,data[903:896] ,data[911:904] ,data[919:912] };
end
85 :begin
 dPIn = {0 ,data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] };
end
86 :begin
 dPIn = {data[455:448] ,data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] };
end
87 :begin
 dPIn = {data[463:456] ,data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] };
end
88 :begin
 dPIn = {data[471:464] ,data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] };
end
89 :begin
 dPIn = {data[479:472] ,data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] };
end
90 :begin
 dPIn = {data[487:480] ,data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] };
end
91 :begin
 dPIn = {data[495:488] ,data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] };
end
92 :begin
 dPIn = {data[503:496] ,data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] };
end
93 :begin
 dPIn = {data[511:504] ,data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] };
end
94 :begin
 dPIn = {data[519:512] ,data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] };
end
95 :begin
 dPIn = {data[527:520] ,data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] };
end
96 :begin
 dPIn = {data[535:528] ,data[543:536] ,data[551:544] ,data[559:552] ,0 ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 };
end
97 :begin
 dPIn = {data[543:536] ,data[551:544] ,data[559:552] ,0 ,0 ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,0 ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,0 ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,0 ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,0 };
end
98 :begin
 dPIn = {0 ,0 ,data[567:560] ,data[575:568] ,data[583:576] ,0 ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,0 ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,0 ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,0 ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] };
end
99 :begin
 dPIn = {0 ,data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] };
end
100 :begin
 dPIn = {data[567:560] ,data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] };
end
101 :begin
 dPIn = {data[575:568] ,data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] };
end
102 :begin
 dPIn = {data[583:576] ,data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] };
end
103 :begin
 dPIn = {data[591:584] ,data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] };
end
104 :begin
 dPIn = {data[599:592] ,data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] };
end
105 :begin
 dPIn = {data[607:600] ,data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] };
end
106 :begin
 dPIn = {data[615:608] ,data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] };
end
107 :begin
 dPIn = {data[623:616] ,data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] };
end
108 :begin
 dPIn = {data[631:624] ,data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] };
end
109 :begin
 dPIn = {data[639:632] ,data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] };
end
110 :begin
 dPIn = {data[647:640] ,data[655:648] ,data[663:656] ,data[671:664] ,0 ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 };
end
111 :begin
 dPIn = {data[655:648] ,data[663:656] ,data[671:664] ,0 ,0 ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,0 ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,0 ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,0 ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,0 };
end
112 :begin
 dPIn = {0 ,0 ,data[679:672] ,data[687:680] ,data[695:688] ,0 ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,0 ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,0 ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,0 ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] };
end
113 :begin
 dPIn = {0 ,data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] };
end
114 :begin
 dPIn = {data[679:672] ,data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] };
end
115 :begin
 dPIn = {data[687:680] ,data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] };
end
116 :begin
 dPIn = {data[695:688] ,data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] };
end
117 :begin
 dPIn = {data[703:696] ,data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] };
end
118 :begin
 dPIn = {data[711:704] ,data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] };
end
119 :begin
 dPIn = {data[719:712] ,data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] };
end
120 :begin
 dPIn = {data[727:720] ,data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] };
end
121 :begin
 dPIn = {data[735:728] ,data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] };
end
122 :begin
 dPIn = {data[743:736] ,data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] };
end
123 :begin
 dPIn = {data[751:744] ,data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] };
end
124 :begin
 dPIn = {data[759:752] ,data[767:760] ,data[775:768] ,data[783:776] ,0 ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 };
end
125 :begin
 dPIn = {data[767:760] ,data[775:768] ,data[783:776] ,0 ,0 ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,0 ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,0 ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,0 ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,0 };
end
126 :begin
 dPIn = {0 ,0 ,data[791:784] ,data[799:792] ,data[807:800] ,0 ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,0 ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,0 ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,0 ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] };
end
127 :begin
 dPIn = {0 ,data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] };
end
128 :begin
 dPIn = {data[791:784] ,data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] };
end
129 :begin
 dPIn = {data[799:792] ,data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] };
end
130 :begin
 dPIn = {data[807:800] ,data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] };
end
131 :begin
 dPIn = {data[815:808] ,data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] };
end
132 :begin
 dPIn = {data[823:816] ,data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] };
end
133 :begin
 dPIn = {data[831:824] ,data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] };
end
134 :begin
 dPIn = {data[839:832] ,data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] };
end
135 :begin
 dPIn = {data[847:840] ,data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] };
end
136 :begin
 dPIn = {data[855:848] ,data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] };
end
137 :begin
 dPIn = {data[863:856] ,data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] };
end
138 :begin
 dPIn = {data[871:864] ,data[879:872] ,data[887:880] ,data[895:888] ,0 ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 };
end
139 :begin
 dPIn = {data[879:872] ,data[887:880] ,data[895:888] ,0 ,0 ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,0 ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,0 ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,0 ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,0 };
end
140 :begin
 dPIn = {0 ,0 ,data[903:896] ,data[911:904] ,data[919:912] ,0 ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,0 ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,0 ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,0 ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] };
end
141 :begin
 dPIn = {0 ,data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] };
end
142 :begin
 dPIn = {data[903:896] ,data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] };
end
143 :begin
 dPIn = {data[911:904] ,data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] };
end
144 :begin
 dPIn = {data[919:912] ,data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] };
end
145 :begin
 dPIn = {data[927:920] ,data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] };
end
146 :begin
 dPIn = {data[935:928] ,data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] };
end
147 :begin
 dPIn = {data[943:936] ,data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] };
end
148 :begin
 dPIn = {data[951:944] ,data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] };
end
149 :begin
 dPIn = {data[959:952] ,data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] };
end
150 :begin
 dPIn = {data[967:960] ,data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] };
end
151 :begin
 dPIn = {data[975:968] ,data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] };
end
152 :begin
 dPIn = {data[983:976] ,data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 };
end
153 :begin
 dPIn = {data[991:984] ,data[999:992] ,data[1007:1000] ,0 ,0 ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,0 ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,0 ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,0 ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,0 };
end
154 :begin
 dPIn = {0 ,0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,0 ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,0 ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,0 ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,0 ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] };
end
155 :begin
 dPIn = {0 ,data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] };
end
156 :begin
 dPIn = {data[1015:1008] ,data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] };
end
157 :begin
 dPIn = {data[1023:1016] ,data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] };
end
158 :begin
 dPIn = {data[1031:1024] ,data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] };
end
159 :begin
 dPIn = {data[1039:1032] ,data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] };
end
160 :begin
 dPIn = {data[1047:1040] ,data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] };
end
161 :begin
 dPIn = {data[1055:1048] ,data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] };
end
162 :begin
 dPIn = {data[1063:1056] ,data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] };
end
163 :begin
 dPIn = {data[1071:1064] ,data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] };
end
164 :begin
 dPIn = {data[1079:1072] ,data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] };
end
165 :begin
 dPIn = {data[1087:1080] ,data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] };
end
166 :begin
 dPIn = {data[1095:1088] ,data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 };
end
167 :begin
 dPIn = {data[1103:1096] ,data[1111:1104] ,data[1119:1112] ,0 ,0 ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,0 ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,0 ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,0 ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 };
end
168 :begin
 dPIn = {0 ,0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,0 ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,0 ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,0 ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,0 ,0 ,0 ,0 ,0 };
end
169 :begin
 dPIn = {0 ,data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,0 ,0 ,0 ,0 ,0 };
end
170 :begin
 dPIn = {data[1127:1120] ,data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,0 ,0 ,0 ,0 ,0 };
end
171 :begin
 dPIn = {data[1135:1128] ,data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,0 ,0 ,0 ,0 ,0 };
end
172 :begin
 dPIn = {data[1143:1136] ,data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,0 ,0 ,0 ,0 ,0 };
end
173 :begin
 dPIn = {data[1151:1144] ,data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,0 ,0 ,0 ,0 ,0 };
end
174 :begin
 dPIn = {data[1159:1152] ,data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,0 ,0 ,0 ,0 ,0 };
end
175 :begin
 dPIn = {data[1167:1160] ,data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,0 ,0 ,0 ,0 ,0 };
end
176 :begin
 dPIn = {data[1175:1168] ,data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,0 ,0 ,0 ,0 ,0 };
end
177 :begin
 dPIn = {data[1183:1176] ,data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,0 ,0 ,0 ,0 ,0 };
end
178 :begin
 dPIn = {data[1191:1184] ,data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,0 ,0 ,0 ,0 ,0 };
end
179 :begin
 dPIn = {data[1199:1192] ,data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 };
end
180 :begin
 dPIn = {data[1207:1200] ,data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 ,0 };
end
181 :begin
 dPIn = {data[1215:1208] ,data[1223:1216] ,data[1231:1224] ,0 ,0 ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,0 ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,0 ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
182 :begin
 dPIn = {0 ,0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,0 ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,0 ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
183 :begin
 dPIn = {0 ,data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,0 ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,0 ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
184 :begin
 dPIn = {data[1239:1232] ,data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1351:1344] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1463:1456] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
185 :begin
 dPIn = {data[1247:1240] ,data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1359:1352] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1471:1464] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
186 :begin
 dPIn = {data[1255:1248] ,data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1367:1360] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1479:1472] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
187 :begin
 dPIn = {data[1263:1256] ,data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1375:1368] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1487:1480] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
188 :begin
 dPIn = {data[1271:1264] ,data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1383:1376] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1495:1488] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
189 :begin
 dPIn = {data[1279:1272] ,data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1391:1384] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1503:1496] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
190 :begin
 dPIn = {data[1287:1280] ,data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1399:1392] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1511:1504] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
191 :begin
 dPIn = {data[1295:1288] ,data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1407:1400] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1519:1512] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
192 :begin
 dPIn = {data[1303:1296] ,data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1415:1408] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1527:1520] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
193 :begin
 dPIn = {data[1311:1304] ,data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,data[1423:1416] ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,data[1535:1528] ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
194 :begin
 dPIn = {data[1319:1312] ,data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,data[1431:1424] ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,data[1543:1536] ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
195 :begin
 dPIn = {data[1327:1320] ,data[1335:1328] ,data[1343:1336] ,0 ,0 ,data[1439:1432] ,data[1447:1440] ,data[1455:1448] ,0 ,0 ,data[1551:1544] ,data[1559:1552] ,data[1567:1560] ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 };
end
endcase
end

endmodule


