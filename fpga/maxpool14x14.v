module maxpool14x14(data,maxPoolState,n_pic2);
    input data;
    input maxPoolState;
    output n_pic2;

wire out1;
reg in1,in2,in3,in4;
maxPool2x2 mP1(in1,in2,in3,in4,out1);    
always @* begin

    
case(maxPoolState)
0 :begin
in1 = data[7:0] 	;
in2 = data[119:112] 	;
in3 = data[15:8] 	;
in4 = data[127:120] 	;
end
1 :begin
in1 = data[23:16] 	;
in2 = data[135:128] 	;
in3 = data[31:24] 	;
in4 = data[143:136] 	;
end
2 :begin
in1 = data[39:32] 	;
in2 = data[151:144] 	;
in3 = data[47:40] 	;
in4 = data[159:152] 	;
end
3 :begin
in1 = data[55:48] 	;
in2 = data[167:160] 	;
in3 = data[63:56] 	;
in4 = data[175:168] 	;
end
4 :begin
in1 = data[71:64] 	;
in2 = data[183:176] 	;
in3 = data[79:72] 	;
in4 = data[191:184] 	;
end
5 :begin
in1 = data[87:80] 	;
in2 = data[199:192] 	;
in3 = data[95:88] 	;
in4 = data[207:200] 	;
end
6 :begin
in1 = data[103:96] 	;
in2 = data[215:208] 	;
in3 = data[111:104] 	;
in4 = data[223:216] 	;
end
7 :begin
in1 = data[231:224] 	;
in2 = data[343:336] 	;
in3 = data[239:232] 	;
in4 = data[351:344] 	;
end
8 :begin
in1 = data[247:240] 	;
in2 = data[359:352] 	;
in3 = data[255:248] 	;
in4 = data[367:360] 	;
end
9 :begin
in1 = data[263:256] 	;
in2 = data[375:368] 	;
in3 = data[271:264] 	;
in4 = data[383:376] 	;
end
10 :begin
in1 = data[279:272] 	;
in2 = data[391:384] 	;
in3 = data[287:280] 	;
in4 = data[399:392] 	;
end
11 :begin
in1 = data[295:288] 	;
in2 = data[407:400] 	;
in3 = data[303:296] 	;
in4 = data[415:408] 	;
end
12 :begin
in1 = data[311:304] 	;
in2 = data[423:416] 	;
in3 = data[319:312] 	;
in4 = data[431:424] 	;
end
13 :begin
in1 = data[327:320] 	;
in2 = data[439:432] 	;
in3 = data[335:328] 	;
in4 = data[447:440] 	;
end
14 :begin
in1 = data[455:448] 	;
in2 = data[567:560] 	;
in3 = data[463:456] 	;
in4 = data[575:568] 	;
end
15 :begin
in1 = data[471:464] 	;
in2 = data[583:576] 	;
in3 = data[479:472] 	;
in4 = data[591:584] 	;
end
16 :begin
in1 = data[487:480] 	;
in2 = data[599:592] 	;
in3 = data[495:488] 	;
in4 = data[607:600] 	;
end
17 :begin
in1 = data[503:496] 	;
in2 = data[615:608] 	;
in3 = data[511:504] 	;
in4 = data[623:616] 	;
end
18 :begin
in1 = data[519:512] 	;
in2 = data[631:624] 	;
in3 = data[527:520] 	;
in4 = data[639:632] 	;
end
19 :begin
in1 = data[535:528] 	;
in2 = data[647:640] 	;
in3 = data[543:536] 	;
in4 = data[655:648] 	;
end
20 :begin
in1 = data[551:544] 	;
in2 = data[663:656] 	;
in3 = data[559:552] 	;
in4 = data[671:664] 	;
end
21 :begin
in1 = data[679:672] 	;
in2 = data[791:784] 	;
in3 = data[687:680] 	;
in4 = data[799:792] 	;
end
22 :begin
in1 = data[695:688] 	;
in2 = data[807:800] 	;
in3 = data[703:696] 	;
in4 = data[815:808] 	;
end
23 :begin
in1 = data[711:704] 	;
in2 = data[823:816] 	;
in3 = data[719:712] 	;
in4 = data[831:824] 	;
end
24 :begin
in1 = data[727:720] 	;
in2 = data[839:832] 	;
in3 = data[735:728] 	;
in4 = data[847:840] 	;
end
25 :begin
in1 = data[743:736] 	;
in2 = data[855:848] 	;
in3 = data[751:744] 	;
in4 = data[863:856] 	;
end
26 :begin
in1 = data[759:752] 	;
in2 = data[871:864] 	;
in3 = data[767:760] 	;
in4 = data[879:872] 	;
end
27 :begin
in1 = data[775:768] 	;
in2 = data[887:880] 	;
in3 = data[783:776] 	;
in4 = data[895:888] 	;
end
28 :begin
in1 = data[903:896] 	;
in2 = data[1015:1008] 	;
in3 = data[911:904] 	;
in4 = data[1023:1016] 	;
end
29 :begin
in1 = data[919:912] 	;
in2 = data[1031:1024] 	;
in3 = data[927:920] 	;
in4 = data[1039:1032] 	;
end
30 :begin
in1 = data[935:928] 	;
in2 = data[1047:1040] 	;
in3 = data[943:936] 	;
in4 = data[1055:1048] 	;
end
31 :begin
in1 = data[951:944] 	;
in2 = data[1063:1056] 	;
in3 = data[959:952] 	;
in4 = data[1071:1064] 	;
end
32 :begin
in1 = data[967:960] 	;
in2 = data[1079:1072] 	;
in3 = data[975:968] 	;
in4 = data[1087:1080] 	;
end
33 :begin
in1 = data[983:976] 	;
in2 = data[1095:1088] 	;
in3 = data[991:984] 	;
in4 = data[1103:1096] 	;
end
34 :begin
in1 = data[999:992] 	;
in2 = data[1111:1104] 	;
in3 = data[1007:1000] 	;
in4 = data[1119:1112] 	;
end
35 :begin
in1 = data[1127:1120] 	;
in2 = data[1239:1232] 	;
in3 = data[1135:1128] 	;
in4 = data[1247:1240] 	;
end
36 :begin
in1 = data[1143:1136] 	;
in2 = data[1255:1248] 	;
in3 = data[1151:1144] 	;
in4 = data[1263:1256] 	;
end
37 :begin
in1 = data[1159:1152] 	;
in2 = data[1271:1264] 	;
in3 = data[1167:1160] 	;
in4 = data[1279:1272] 	;
end
38 :begin
in1 = data[1175:1168] 	;
in2 = data[1287:1280] 	;
in3 = data[1183:1176] 	;
in4 = data[1295:1288] 	;
end
39 :begin
in1 = data[1191:1184] 	;
in2 = data[1303:1296] 	;
in3 = data[1199:1192] 	;
in4 = data[1311:1304] 	;
end
40 :begin
in1 = data[1207:1200] 	;
in2 = data[1319:1312] 	;
in3 = data[1215:1208] 	;
in4 = data[1327:1320] 	;
end
41 :begin
in1 = data[1223:1216] 	;
in2 = data[1335:1328] 	;
in3 = data[1231:1224] 	;
in4 = data[1343:1336] 	;
end
42 :begin
in1 = data[1351:1344] 	;
in2 = data[1463:1456] 	;
in3 = data[1359:1352] 	;
in4 = data[1471:1464] 	;
end
43 :begin
in1 = data[1367:1360] 	;
in2 = data[1479:1472] 	;
in3 = data[1375:1368] 	;
in4 = data[1487:1480] 	;
end
44 :begin
in1 = data[1383:1376] 	;
in2 = data[1495:1488] 	;
in3 = data[1391:1384] 	;
in4 = data[1503:1496] 	;
end
45 :begin
in1 = data[1399:1392] 	;
in2 = data[1511:1504] 	;
in3 = data[1407:1400] 	;
in4 = data[1519:1512] 	;
end
46 :begin
in1 = data[1415:1408] 	;
in2 = data[1527:1520] 	;
in3 = data[1423:1416] 	;
in4 = data[1535:1528] 	;
end
47 :begin
in1 = data[1431:1424] 	;
in2 = data[1543:1536] 	;
in3 = data[1439:1432] 	;
in4 = data[1551:1544] 	;
end
48 :begin
in1 = data[1447:1440] 	;
in2 = data[1559:1552] 	;
in3 = data[1455:1448] 	;
in4 = data[1567:1560] 	;
end
endcase


end

endmodule

