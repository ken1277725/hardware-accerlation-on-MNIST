module maxpool14x14(data,maxPoolState,out);
    input data;
    input maxPoolState;
    output n_pic2;


    wire [20:0] maxPoolState;
    wire [IntSize*784-1:0] data;
    wire[7:0] out;
    reg[7:0] in1,in2,in3,in4;
    maxPool2x2 mP1(.in1(in1),.in2(in2),.in3(in3),.in4(in4),.out1(out));    


always @* begin
case(maxPoolState)
0 :begin
in1 = data[7:0] 	;
in2 = data[231:224] 	;
in3 = data[15:8] 	;
in4 = data[239:232] 	;
end
1 :begin
in1 = data[23:16] 	;
in2 = data[247:240] 	;
in3 = data[31:24] 	;
in4 = data[255:248] 	;
end
2 :begin
in1 = data[39:32] 	;
in2 = data[263:256] 	;
in3 = data[47:40] 	;
in4 = data[271:264] 	;
end
3 :begin
in1 = data[55:48] 	;
in2 = data[279:272] 	;
in3 = data[63:56] 	;
in4 = data[287:280] 	;
end
4 :begin
in1 = data[71:64] 	;
in2 = data[295:288] 	;
in3 = data[79:72] 	;
in4 = data[303:296] 	;
end
5 :begin
in1 = data[87:80] 	;
in2 = data[311:304] 	;
in3 = data[95:88] 	;
in4 = data[319:312] 	;
end
6 :begin
in1 = data[103:96] 	;
in2 = data[327:320] 	;
in3 = data[111:104] 	;
in4 = data[335:328] 	;
end
7 :begin
in1 = data[119:112] 	;
in2 = data[343:336] 	;
in3 = data[127:120] 	;
in4 = data[351:344] 	;
end
8 :begin
in1 = data[135:128] 	;
in2 = data[359:352] 	;
in3 = data[143:136] 	;
in4 = data[367:360] 	;
end
9 :begin
in1 = data[151:144] 	;
in2 = data[375:368] 	;
in3 = data[159:152] 	;
in4 = data[383:376] 	;
end
10 :begin
in1 = data[167:160] 	;
in2 = data[391:384] 	;
in3 = data[175:168] 	;
in4 = data[399:392] 	;
end
11 :begin
in1 = data[183:176] 	;
in2 = data[407:400] 	;
in3 = data[191:184] 	;
in4 = data[415:408] 	;
end
12 :begin
in1 = data[199:192] 	;
in2 = data[423:416] 	;
in3 = data[207:200] 	;
in4 = data[431:424] 	;
end
13 :begin
in1 = data[215:208] 	;
in2 = data[439:432] 	;
in3 = data[223:216] 	;
in4 = data[447:440] 	;
end
14 :begin
in1 = data[455:448] 	;
in2 = data[679:672] 	;
in3 = data[463:456] 	;
in4 = data[687:680] 	;
end
15 :begin
in1 = data[471:464] 	;
in2 = data[695:688] 	;
in3 = data[479:472] 	;
in4 = data[703:696] 	;
end
16 :begin
in1 = data[487:480] 	;
in2 = data[711:704] 	;
in3 = data[495:488] 	;
in4 = data[719:712] 	;
end
17 :begin
in1 = data[503:496] 	;
in2 = data[727:720] 	;
in3 = data[511:504] 	;
in4 = data[735:728] 	;
end
18 :begin
in1 = data[519:512] 	;
in2 = data[743:736] 	;
in3 = data[527:520] 	;
in4 = data[751:744] 	;
end
19 :begin
in1 = data[535:528] 	;
in2 = data[759:752] 	;
in3 = data[543:536] 	;
in4 = data[767:760] 	;
end
20 :begin
in1 = data[551:544] 	;
in2 = data[775:768] 	;
in3 = data[559:552] 	;
in4 = data[783:776] 	;
end
21 :begin
in1 = data[567:560] 	;
in2 = data[791:784] 	;
in3 = data[575:568] 	;
in4 = data[799:792] 	;
end
22 :begin
in1 = data[583:576] 	;
in2 = data[807:800] 	;
in3 = data[591:584] 	;
in4 = data[815:808] 	;
end
23 :begin
in1 = data[599:592] 	;
in2 = data[823:816] 	;
in3 = data[607:600] 	;
in4 = data[831:824] 	;
end
24 :begin
in1 = data[615:608] 	;
in2 = data[839:832] 	;
in3 = data[623:616] 	;
in4 = data[847:840] 	;
end
25 :begin
in1 = data[631:624] 	;
in2 = data[855:848] 	;
in3 = data[639:632] 	;
in4 = data[863:856] 	;
end
26 :begin
in1 = data[647:640] 	;
in2 = data[871:864] 	;
in3 = data[655:648] 	;
in4 = data[879:872] 	;
end
27 :begin
in1 = data[663:656] 	;
in2 = data[887:880] 	;
in3 = data[671:664] 	;
in4 = data[895:888] 	;
end
28 :begin
in1 = data[903:896] 	;
in2 = data[1127:1120] 	;
in3 = data[911:904] 	;
in4 = data[1135:1128] 	;
end
29 :begin
in1 = data[919:912] 	;
in2 = data[1143:1136] 	;
in3 = data[927:920] 	;
in4 = data[1151:1144] 	;
end
30 :begin
in1 = data[935:928] 	;
in2 = data[1159:1152] 	;
in3 = data[943:936] 	;
in4 = data[1167:1160] 	;
end
31 :begin
in1 = data[951:944] 	;
in2 = data[1175:1168] 	;
in3 = data[959:952] 	;
in4 = data[1183:1176] 	;
end
32 :begin
in1 = data[967:960] 	;
in2 = data[1191:1184] 	;
in3 = data[975:968] 	;
in4 = data[1199:1192] 	;
end
33 :begin
in1 = data[983:976] 	;
in2 = data[1207:1200] 	;
in3 = data[991:984] 	;
in4 = data[1215:1208] 	;
end
34 :begin
in1 = data[999:992] 	;
in2 = data[1223:1216] 	;
in3 = data[1007:1000] 	;
in4 = data[1231:1224] 	;
end
35 :begin
in1 = data[1015:1008] 	;
in2 = data[1239:1232] 	;
in3 = data[1023:1016] 	;
in4 = data[1247:1240] 	;
end
36 :begin
in1 = data[1031:1024] 	;
in2 = data[1255:1248] 	;
in3 = data[1039:1032] 	;
in4 = data[1263:1256] 	;
end
37 :begin
in1 = data[1047:1040] 	;
in2 = data[1271:1264] 	;
in3 = data[1055:1048] 	;
in4 = data[1279:1272] 	;
end
38 :begin
in1 = data[1063:1056] 	;
in2 = data[1287:1280] 	;
in3 = data[1071:1064] 	;
in4 = data[1295:1288] 	;
end
39 :begin
in1 = data[1079:1072] 	;
in2 = data[1303:1296] 	;
in3 = data[1087:1080] 	;
in4 = data[1311:1304] 	;
end
40 :begin
in1 = data[1095:1088] 	;
in2 = data[1319:1312] 	;
in3 = data[1103:1096] 	;
in4 = data[1327:1320] 	;
end
41 :begin
in1 = data[1111:1104] 	;
in2 = data[1335:1328] 	;
in3 = data[1119:1112] 	;
in4 = data[1343:1336] 	;
end
42 :begin
in1 = data[1351:1344] 	;
in2 = data[1575:1568] 	;
in3 = data[1359:1352] 	;
in4 = data[1583:1576] 	;
end
43 :begin
in1 = data[1367:1360] 	;
in2 = data[1591:1584] 	;
in3 = data[1375:1368] 	;
in4 = data[1599:1592] 	;
end
44 :begin
in1 = data[1383:1376] 	;
in2 = data[1607:1600] 	;
in3 = data[1391:1384] 	;
in4 = data[1615:1608] 	;
end
45 :begin
in1 = data[1399:1392] 	;
in2 = data[1623:1616] 	;
in3 = data[1407:1400] 	;
in4 = data[1631:1624] 	;
end
46 :begin
in1 = data[1415:1408] 	;
in2 = data[1639:1632] 	;
in3 = data[1423:1416] 	;
in4 = data[1647:1640] 	;
end
47 :begin
in1 = data[1431:1424] 	;
in2 = data[1655:1648] 	;
in3 = data[1439:1432] 	;
in4 = data[1663:1656] 	;
end
48 :begin
in1 = data[1447:1440] 	;
in2 = data[1671:1664] 	;
in3 = data[1455:1448] 	;
in4 = data[1679:1672] 	;
end
49 :begin
in1 = data[1463:1456] 	;
in2 = data[1687:1680] 	;
in3 = data[1471:1464] 	;
in4 = data[1695:1688] 	;
end
50 :begin
in1 = data[1479:1472] 	;
in2 = data[1703:1696] 	;
in3 = data[1487:1480] 	;
in4 = data[1711:1704] 	;
end
51 :begin
in1 = data[1495:1488] 	;
in2 = data[1719:1712] 	;
in3 = data[1503:1496] 	;
in4 = data[1727:1720] 	;
end
52 :begin
in1 = data[1511:1504] 	;
in2 = data[1735:1728] 	;
in3 = data[1519:1512] 	;
in4 = data[1743:1736] 	;
end
53 :begin
in1 = data[1527:1520] 	;
in2 = data[1751:1744] 	;
in3 = data[1535:1528] 	;
in4 = data[1759:1752] 	;
end
54 :begin
in1 = data[1543:1536] 	;
in2 = data[1767:1760] 	;
in3 = data[1551:1544] 	;
in4 = data[1775:1768] 	;
end
55 :begin
in1 = data[1559:1552] 	;
in2 = data[1783:1776] 	;
in3 = data[1567:1560] 	;
in4 = data[1791:1784] 	;
end
56 :begin
in1 = data[1799:1792] 	;
in2 = data[2023:2016] 	;
in3 = data[1807:1800] 	;
in4 = data[2031:2024] 	;
end
57 :begin
in1 = data[1815:1808] 	;
in2 = data[2039:2032] 	;
in3 = data[1823:1816] 	;
in4 = data[2047:2040] 	;
end
58 :begin
in1 = data[1831:1824] 	;
in2 = data[2055:2048] 	;
in3 = data[1839:1832] 	;
in4 = data[2063:2056] 	;
end
59 :begin
in1 = data[1847:1840] 	;
in2 = data[2071:2064] 	;
in3 = data[1855:1848] 	;
in4 = data[2079:2072] 	;
end
60 :begin
in1 = data[1863:1856] 	;
in2 = data[2087:2080] 	;
in3 = data[1871:1864] 	;
in4 = data[2095:2088] 	;
end
61 :begin
in1 = data[1879:1872] 	;
in2 = data[2103:2096] 	;
in3 = data[1887:1880] 	;
in4 = data[2111:2104] 	;
end
62 :begin
in1 = data[1895:1888] 	;
in2 = data[2119:2112] 	;
in3 = data[1903:1896] 	;
in4 = data[2127:2120] 	;
end
63 :begin
in1 = data[1911:1904] 	;
in2 = data[2135:2128] 	;
in3 = data[1919:1912] 	;
in4 = data[2143:2136] 	;
end
64 :begin
in1 = data[1927:1920] 	;
in2 = data[2151:2144] 	;
in3 = data[1935:1928] 	;
in4 = data[2159:2152] 	;
end
65 :begin
in1 = data[1943:1936] 	;
in2 = data[2167:2160] 	;
in3 = data[1951:1944] 	;
in4 = data[2175:2168] 	;
end
66 :begin
in1 = data[1959:1952] 	;
in2 = data[2183:2176] 	;
in3 = data[1967:1960] 	;
in4 = data[2191:2184] 	;
end
67 :begin
in1 = data[1975:1968] 	;
in2 = data[2199:2192] 	;
in3 = data[1983:1976] 	;
in4 = data[2207:2200] 	;
end
68 :begin
in1 = data[1991:1984] 	;
in2 = data[2215:2208] 	;
in3 = data[1999:1992] 	;
in4 = data[2223:2216] 	;
end
69 :begin
in1 = data[2007:2000] 	;
in2 = data[2231:2224] 	;
in3 = data[2015:2008] 	;
in4 = data[2239:2232] 	;
end
70 :begin
in1 = data[2247:2240] 	;
in2 = data[2471:2464] 	;
in3 = data[2255:2248] 	;
in4 = data[2479:2472] 	;
end
71 :begin
in1 = data[2263:2256] 	;
in2 = data[2487:2480] 	;
in3 = data[2271:2264] 	;
in4 = data[2495:2488] 	;
end
72 :begin
in1 = data[2279:2272] 	;
in2 = data[2503:2496] 	;
in3 = data[2287:2280] 	;
in4 = data[2511:2504] 	;
end
73 :begin
in1 = data[2295:2288] 	;
in2 = data[2519:2512] 	;
in3 = data[2303:2296] 	;
in4 = data[2527:2520] 	;
end
74 :begin
in1 = data[2311:2304] 	;
in2 = data[2535:2528] 	;
in3 = data[2319:2312] 	;
in4 = data[2543:2536] 	;
end
75 :begin
in1 = data[2327:2320] 	;
in2 = data[2551:2544] 	;
in3 = data[2335:2328] 	;
in4 = data[2559:2552] 	;
end
76 :begin
in1 = data[2343:2336] 	;
in2 = data[2567:2560] 	;
in3 = data[2351:2344] 	;
in4 = data[2575:2568] 	;
end
77 :begin
in1 = data[2359:2352] 	;
in2 = data[2583:2576] 	;
in3 = data[2367:2360] 	;
in4 = data[2591:2584] 	;
end
78 :begin
in1 = data[2375:2368] 	;
in2 = data[2599:2592] 	;
in3 = data[2383:2376] 	;
in4 = data[2607:2600] 	;
end
79 :begin
in1 = data[2391:2384] 	;
in2 = data[2615:2608] 	;
in3 = data[2399:2392] 	;
in4 = data[2623:2616] 	;
end
80 :begin
in1 = data[2407:2400] 	;
in2 = data[2631:2624] 	;
in3 = data[2415:2408] 	;
in4 = data[2639:2632] 	;
end
81 :begin
in1 = data[2423:2416] 	;
in2 = data[2647:2640] 	;
in3 = data[2431:2424] 	;
in4 = data[2655:2648] 	;
end
82 :begin
in1 = data[2439:2432] 	;
in2 = data[2663:2656] 	;
in3 = data[2447:2440] 	;
in4 = data[2671:2664] 	;
end
83 :begin
in1 = data[2455:2448] 	;
in2 = data[2679:2672] 	;
in3 = data[2463:2456] 	;
in4 = data[2687:2680] 	;
end
84 :begin
in1 = data[2695:2688] 	;
in2 = data[2919:2912] 	;
in3 = data[2703:2696] 	;
in4 = data[2927:2920] 	;
end
85 :begin
in1 = data[2711:2704] 	;
in2 = data[2935:2928] 	;
in3 = data[2719:2712] 	;
in4 = data[2943:2936] 	;
end
86 :begin
in1 = data[2727:2720] 	;
in2 = data[2951:2944] 	;
in3 = data[2735:2728] 	;
in4 = data[2959:2952] 	;
end
87 :begin
in1 = data[2743:2736] 	;
in2 = data[2967:2960] 	;
in3 = data[2751:2744] 	;
in4 = data[2975:2968] 	;
end
88 :begin
in1 = data[2759:2752] 	;
in2 = data[2983:2976] 	;
in3 = data[2767:2760] 	;
in4 = data[2991:2984] 	;
end
89 :begin
in1 = data[2775:2768] 	;
in2 = data[2999:2992] 	;
in3 = data[2783:2776] 	;
in4 = data[3007:3000] 	;
end
90 :begin
in1 = data[2791:2784] 	;
in2 = data[3015:3008] 	;
in3 = data[2799:2792] 	;
in4 = data[3023:3016] 	;
end
91 :begin
in1 = data[2807:2800] 	;
in2 = data[3031:3024] 	;
in3 = data[2815:2808] 	;
in4 = data[3039:3032] 	;
end
92 :begin
in1 = data[2823:2816] 	;
in2 = data[3047:3040] 	;
in3 = data[2831:2824] 	;
in4 = data[3055:3048] 	;
end
93 :begin
in1 = data[2839:2832] 	;
in2 = data[3063:3056] 	;
in3 = data[2847:2840] 	;
in4 = data[3071:3064] 	;
end
94 :begin
in1 = data[2855:2848] 	;
in2 = data[3079:3072] 	;
in3 = data[2863:2856] 	;
in4 = data[3087:3080] 	;
end
95 :begin
in1 = data[2871:2864] 	;
in2 = data[3095:3088] 	;
in3 = data[2879:2872] 	;
in4 = data[3103:3096] 	;
end
96 :begin
in1 = data[2887:2880] 	;
in2 = data[3111:3104] 	;
in3 = data[2895:2888] 	;
in4 = data[3119:3112] 	;
end
97 :begin
in1 = data[2903:2896] 	;
in2 = data[3127:3120] 	;
in3 = data[2911:2904] 	;
in4 = data[3135:3128] 	;
end
98 :begin
in1 = data[3143:3136] 	;
in2 = data[3367:3360] 	;
in3 = data[3151:3144] 	;
in4 = data[3375:3368] 	;
end
99 :begin
in1 = data[3159:3152] 	;
in2 = data[3383:3376] 	;
in3 = data[3167:3160] 	;
in4 = data[3391:3384] 	;
end
100 :begin
in1 = data[3175:3168] 	;
in2 = data[3399:3392] 	;
in3 = data[3183:3176] 	;
in4 = data[3407:3400] 	;
end
101 :begin
in1 = data[3191:3184] 	;
in2 = data[3415:3408] 	;
in3 = data[3199:3192] 	;
in4 = data[3423:3416] 	;
end
102 :begin
in1 = data[3207:3200] 	;
in2 = data[3431:3424] 	;
in3 = data[3215:3208] 	;
in4 = data[3439:3432] 	;
end
103 :begin
in1 = data[3223:3216] 	;
in2 = data[3447:3440] 	;
in3 = data[3231:3224] 	;
in4 = data[3455:3448] 	;
end
104 :begin
in1 = data[3239:3232] 	;
in2 = data[3463:3456] 	;
in3 = data[3247:3240] 	;
in4 = data[3471:3464] 	;
end
105 :begin
in1 = data[3255:3248] 	;
in2 = data[3479:3472] 	;
in3 = data[3263:3256] 	;
in4 = data[3487:3480] 	;
end
106 :begin
in1 = data[3271:3264] 	;
in2 = data[3495:3488] 	;
in3 = data[3279:3272] 	;
in4 = data[3503:3496] 	;
end
107 :begin
in1 = data[3287:3280] 	;
in2 = data[3511:3504] 	;
in3 = data[3295:3288] 	;
in4 = data[3519:3512] 	;
end
108 :begin
in1 = data[3303:3296] 	;
in2 = data[3527:3520] 	;
in3 = data[3311:3304] 	;
in4 = data[3535:3528] 	;
end
109 :begin
in1 = data[3319:3312] 	;
in2 = data[3543:3536] 	;
in3 = data[3327:3320] 	;
in4 = data[3551:3544] 	;
end
110 :begin
in1 = data[3335:3328] 	;
in2 = data[3559:3552] 	;
in3 = data[3343:3336] 	;
in4 = data[3567:3560] 	;
end
111 :begin
in1 = data[3351:3344] 	;
in2 = data[3575:3568] 	;
in3 = data[3359:3352] 	;
in4 = data[3583:3576] 	;
end
112 :begin
in1 = data[3591:3584] 	;
in2 = data[3815:3808] 	;
in3 = data[3599:3592] 	;
in4 = data[3823:3816] 	;
end
113 :begin
in1 = data[3607:3600] 	;
in2 = data[3831:3824] 	;
in3 = data[3615:3608] 	;
in4 = data[3839:3832] 	;
end
114 :begin
in1 = data[3623:3616] 	;
in2 = data[3847:3840] 	;
in3 = data[3631:3624] 	;
in4 = data[3855:3848] 	;
end
115 :begin
in1 = data[3639:3632] 	;
in2 = data[3863:3856] 	;
in3 = data[3647:3640] 	;
in4 = data[3871:3864] 	;
end
116 :begin
in1 = data[3655:3648] 	;
in2 = data[3879:3872] 	;
in3 = data[3663:3656] 	;
in4 = data[3887:3880] 	;
end
117 :begin
in1 = data[3671:3664] 	;
in2 = data[3895:3888] 	;
in3 = data[3679:3672] 	;
in4 = data[3903:3896] 	;
end
118 :begin
in1 = data[3687:3680] 	;
in2 = data[3911:3904] 	;
in3 = data[3695:3688] 	;
in4 = data[3919:3912] 	;
end
119 :begin
in1 = data[3703:3696] 	;
in2 = data[3927:3920] 	;
in3 = data[3711:3704] 	;
in4 = data[3935:3928] 	;
end
120 :begin
in1 = data[3719:3712] 	;
in2 = data[3943:3936] 	;
in3 = data[3727:3720] 	;
in4 = data[3951:3944] 	;
end
121 :begin
in1 = data[3735:3728] 	;
in2 = data[3959:3952] 	;
in3 = data[3743:3736] 	;
in4 = data[3967:3960] 	;
end
122 :begin
in1 = data[3751:3744] 	;
in2 = data[3975:3968] 	;
in3 = data[3759:3752] 	;
in4 = data[3983:3976] 	;
end
123 :begin
in1 = data[3767:3760] 	;
in2 = data[3991:3984] 	;
in3 = data[3775:3768] 	;
in4 = data[3999:3992] 	;
end
124 :begin
in1 = data[3783:3776] 	;
in2 = data[4007:4000] 	;
in3 = data[3791:3784] 	;
in4 = data[4015:4008] 	;
end
125 :begin
in1 = data[3799:3792] 	;
in2 = data[4023:4016] 	;
in3 = data[3807:3800] 	;
in4 = data[4031:4024] 	;
end
126 :begin
in1 = data[4039:4032] 	;
in2 = data[4263:4256] 	;
in3 = data[4047:4040] 	;
in4 = data[4271:4264] 	;
end
127 :begin
in1 = data[4055:4048] 	;
in2 = data[4279:4272] 	;
in3 = data[4063:4056] 	;
in4 = data[4287:4280] 	;
end
128 :begin
in1 = data[4071:4064] 	;
in2 = data[4295:4288] 	;
in3 = data[4079:4072] 	;
in4 = data[4303:4296] 	;
end
129 :begin
in1 = data[4087:4080] 	;
in2 = data[4311:4304] 	;
in3 = data[4095:4088] 	;
in4 = data[4319:4312] 	;
end
130 :begin
in1 = data[4103:4096] 	;
in2 = data[4327:4320] 	;
in3 = data[4111:4104] 	;
in4 = data[4335:4328] 	;
end
131 :begin
in1 = data[4119:4112] 	;
in2 = data[4343:4336] 	;
in3 = data[4127:4120] 	;
in4 = data[4351:4344] 	;
end
132 :begin
in1 = data[4135:4128] 	;
in2 = data[4359:4352] 	;
in3 = data[4143:4136] 	;
in4 = data[4367:4360] 	;
end
133 :begin
in1 = data[4151:4144] 	;
in2 = data[4375:4368] 	;
in3 = data[4159:4152] 	;
in4 = data[4383:4376] 	;
end
134 :begin
in1 = data[4167:4160] 	;
in2 = data[4391:4384] 	;
in3 = data[4175:4168] 	;
in4 = data[4399:4392] 	;
end
135 :begin
in1 = data[4183:4176] 	;
in2 = data[4407:4400] 	;
in3 = data[4191:4184] 	;
in4 = data[4415:4408] 	;
end
136 :begin
in1 = data[4199:4192] 	;
in2 = data[4423:4416] 	;
in3 = data[4207:4200] 	;
in4 = data[4431:4424] 	;
end
137 :begin
in1 = data[4215:4208] 	;
in2 = data[4439:4432] 	;
in3 = data[4223:4216] 	;
in4 = data[4447:4440] 	;
end
138 :begin
in1 = data[4231:4224] 	;
in2 = data[4455:4448] 	;
in3 = data[4239:4232] 	;
in4 = data[4463:4456] 	;
end
139 :begin
in1 = data[4247:4240] 	;
in2 = data[4471:4464] 	;
in3 = data[4255:4248] 	;
in4 = data[4479:4472] 	;
end
140 :begin
in1 = data[4487:4480] 	;
in2 = data[4711:4704] 	;
in3 = data[4495:4488] 	;
in4 = data[4719:4712] 	;
end
141 :begin
in1 = data[4503:4496] 	;
in2 = data[4727:4720] 	;
in3 = data[4511:4504] 	;
in4 = data[4735:4728] 	;
end
142 :begin
in1 = data[4519:4512] 	;
in2 = data[4743:4736] 	;
in3 = data[4527:4520] 	;
in4 = data[4751:4744] 	;
end
143 :begin
in1 = data[4535:4528] 	;
in2 = data[4759:4752] 	;
in3 = data[4543:4536] 	;
in4 = data[4767:4760] 	;
end
144 :begin
in1 = data[4551:4544] 	;
in2 = data[4775:4768] 	;
in3 = data[4559:4552] 	;
in4 = data[4783:4776] 	;
end
145 :begin
in1 = data[4567:4560] 	;
in2 = data[4791:4784] 	;
in3 = data[4575:4568] 	;
in4 = data[4799:4792] 	;
end
146 :begin
in1 = data[4583:4576] 	;
in2 = data[4807:4800] 	;
in3 = data[4591:4584] 	;
in4 = data[4815:4808] 	;
end
147 :begin
in1 = data[4599:4592] 	;
in2 = data[4823:4816] 	;
in3 = data[4607:4600] 	;
in4 = data[4831:4824] 	;
end
148 :begin
in1 = data[4615:4608] 	;
in2 = data[4839:4832] 	;
in3 = data[4623:4616] 	;
in4 = data[4847:4840] 	;
end
149 :begin
in1 = data[4631:4624] 	;
in2 = data[4855:4848] 	;
in3 = data[4639:4632] 	;
in4 = data[4863:4856] 	;
end
150 :begin
in1 = data[4647:4640] 	;
in2 = data[4871:4864] 	;
in3 = data[4655:4648] 	;
in4 = data[4879:4872] 	;
end
151 :begin
in1 = data[4663:4656] 	;
in2 = data[4887:4880] 	;
in3 = data[4671:4664] 	;
in4 = data[4895:4888] 	;
end
152 :begin
in1 = data[4679:4672] 	;
in2 = data[4903:4896] 	;
in3 = data[4687:4680] 	;
in4 = data[4911:4904] 	;
end
153 :begin
in1 = data[4695:4688] 	;
in2 = data[4919:4912] 	;
in3 = data[4703:4696] 	;
in4 = data[4927:4920] 	;
end
154 :begin
in1 = data[4935:4928] 	;
in2 = data[5159:5152] 	;
in3 = data[4943:4936] 	;
in4 = data[5167:5160] 	;
end
155 :begin
in1 = data[4951:4944] 	;
in2 = data[5175:5168] 	;
in3 = data[4959:4952] 	;
in4 = data[5183:5176] 	;
end
156 :begin
in1 = data[4967:4960] 	;
in2 = data[5191:5184] 	;
in3 = data[4975:4968] 	;
in4 = data[5199:5192] 	;
end
157 :begin
in1 = data[4983:4976] 	;
in2 = data[5207:5200] 	;
in3 = data[4991:4984] 	;
in4 = data[5215:5208] 	;
end
158 :begin
in1 = data[4999:4992] 	;
in2 = data[5223:5216] 	;
in3 = data[5007:5000] 	;
in4 = data[5231:5224] 	;
end
159 :begin
in1 = data[5015:5008] 	;
in2 = data[5239:5232] 	;
in3 = data[5023:5016] 	;
in4 = data[5247:5240] 	;
end
160 :begin
in1 = data[5031:5024] 	;
in2 = data[5255:5248] 	;
in3 = data[5039:5032] 	;
in4 = data[5263:5256] 	;
end
161 :begin
in1 = data[5047:5040] 	;
in2 = data[5271:5264] 	;
in3 = data[5055:5048] 	;
in4 = data[5279:5272] 	;
end
162 :begin
in1 = data[5063:5056] 	;
in2 = data[5287:5280] 	;
in3 = data[5071:5064] 	;
in4 = data[5295:5288] 	;
end
163 :begin
in1 = data[5079:5072] 	;
in2 = data[5303:5296] 	;
in3 = data[5087:5080] 	;
in4 = data[5311:5304] 	;
end
164 :begin
in1 = data[5095:5088] 	;
in2 = data[5319:5312] 	;
in3 = data[5103:5096] 	;
in4 = data[5327:5320] 	;
end
165 :begin
in1 = data[5111:5104] 	;
in2 = data[5335:5328] 	;
in3 = data[5119:5112] 	;
in4 = data[5343:5336] 	;
end
166 :begin
in1 = data[5127:5120] 	;
in2 = data[5351:5344] 	;
in3 = data[5135:5128] 	;
in4 = data[5359:5352] 	;
end
167 :begin
in1 = data[5143:5136] 	;
in2 = data[5367:5360] 	;
in3 = data[5151:5144] 	;
in4 = data[5375:5368] 	;
end
168 :begin
in1 = data[5383:5376] 	;
in2 = data[5607:5600] 	;
in3 = data[5391:5384] 	;
in4 = data[5615:5608] 	;
end
169 :begin
in1 = data[5399:5392] 	;
in2 = data[5623:5616] 	;
in3 = data[5407:5400] 	;
in4 = data[5631:5624] 	;
end
170 :begin
in1 = data[5415:5408] 	;
in2 = data[5639:5632] 	;
in3 = data[5423:5416] 	;
in4 = data[5647:5640] 	;
end
171 :begin
in1 = data[5431:5424] 	;
in2 = data[5655:5648] 	;
in3 = data[5439:5432] 	;
in4 = data[5663:5656] 	;
end
172 :begin
in1 = data[5447:5440] 	;
in2 = data[5671:5664] 	;
in3 = data[5455:5448] 	;
in4 = data[5679:5672] 	;
end
173 :begin
in1 = data[5463:5456] 	;
in2 = data[5687:5680] 	;
in3 = data[5471:5464] 	;
in4 = data[5695:5688] 	;
end
174 :begin
in1 = data[5479:5472] 	;
in2 = data[5703:5696] 	;
in3 = data[5487:5480] 	;
in4 = data[5711:5704] 	;
end
175 :begin
in1 = data[5495:5488] 	;
in2 = data[5719:5712] 	;
in3 = data[5503:5496] 	;
in4 = data[5727:5720] 	;
end
176 :begin
in1 = data[5511:5504] 	;
in2 = data[5735:5728] 	;
in3 = data[5519:5512] 	;
in4 = data[5743:5736] 	;
end
177 :begin
in1 = data[5527:5520] 	;
in2 = data[5751:5744] 	;
in3 = data[5535:5528] 	;
in4 = data[5759:5752] 	;
end
178 :begin
in1 = data[5543:5536] 	;
in2 = data[5767:5760] 	;
in3 = data[5551:5544] 	;
in4 = data[5775:5768] 	;
end
179 :begin
in1 = data[5559:5552] 	;
in2 = data[5783:5776] 	;
in3 = data[5567:5560] 	;
in4 = data[5791:5784] 	;
end
180 :begin
in1 = data[5575:5568] 	;
in2 = data[5799:5792] 	;
in3 = data[5583:5576] 	;
in4 = data[5807:5800] 	;
end
181 :begin
in1 = data[5591:5584] 	;
in2 = data[5815:5808] 	;
in3 = data[5599:5592] 	;
in4 = data[5823:5816] 	;
end
182 :begin
in1 = data[5831:5824] 	;
in2 = data[6055:6048] 	;
in3 = data[5839:5832] 	;
in4 = data[6063:6056] 	;
end
183 :begin
in1 = data[5847:5840] 	;
in2 = data[6071:6064] 	;
in3 = data[5855:5848] 	;
in4 = data[6079:6072] 	;
end
184 :begin
in1 = data[5863:5856] 	;
in2 = data[6087:6080] 	;
in3 = data[5871:5864] 	;
in4 = data[6095:6088] 	;
end
185 :begin
in1 = data[5879:5872] 	;
in2 = data[6103:6096] 	;
in3 = data[5887:5880] 	;
in4 = data[6111:6104] 	;
end
186 :begin
in1 = data[5895:5888] 	;
in2 = data[6119:6112] 	;
in3 = data[5903:5896] 	;
in4 = data[6127:6120] 	;
end
187 :begin
in1 = data[5911:5904] 	;
in2 = data[6135:6128] 	;
in3 = data[5919:5912] 	;
in4 = data[6143:6136] 	;
end
188 :begin
in1 = data[5927:5920] 	;
in2 = data[6151:6144] 	;
in3 = data[5935:5928] 	;
in4 = data[6159:6152] 	;
end
189 :begin
in1 = data[5943:5936] 	;
in2 = data[6167:6160] 	;
in3 = data[5951:5944] 	;
in4 = data[6175:6168] 	;
end
190 :begin
in1 = data[5959:5952] 	;
in2 = data[6183:6176] 	;
in3 = data[5967:5960] 	;
in4 = data[6191:6184] 	;
end
191 :begin
in1 = data[5975:5968] 	;
in2 = data[6199:6192] 	;
in3 = data[5983:5976] 	;
in4 = data[6207:6200] 	;
end
192 :begin
in1 = data[5991:5984] 	;
in2 = data[6215:6208] 	;
in3 = data[5999:5992] 	;
in4 = data[6223:6216] 	;
end
193 :begin
in1 = data[6007:6000] 	;
in2 = data[6231:6224] 	;
in3 = data[6015:6008] 	;
in4 = data[6239:6232] 	;
end
194 :begin
in1 = data[6023:6016] 	;
in2 = data[6247:6240] 	;
in3 = data[6031:6024] 	;
in4 = data[6255:6248] 	;
end
195 :begin
in1 = data[6039:6032] 	;
in2 = data[6263:6256] 	;
in3 = data[6047:6040] 	;
in4 = data[6271:6264] 	;
end
endcase

end

endmodule

