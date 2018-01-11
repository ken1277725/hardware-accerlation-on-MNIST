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
in2 = data[63:56] 	;
in3 = data[15:8] 	;
in4 = data[71:64] 	;
end
1 :begin
in1 = data[23:16] 	;
in2 = data[79:72] 	;
in3 = data[31:24] 	;
in4 = data[87:80] 	;
end
2 :begin
in1 = data[39:32] 	;
in2 = data[95:88] 	;
in3 = data[47:40] 	;
in4 = data[103:96] 	;
end
3 :begin
in1 = data[55:48] 	;
in2 = data[111:104] 	;
in3 = 0 	;
in4 = 0 	;
end
3 :begin
in1 = data[119:112] 	;
in2 = data[175:168] 	;
in3 = data[127:120] 	;
in4 = data[183:176] 	;
end
4 :begin
in1 = data[135:128] 	;
in2 = data[191:184] 	;
in3 = data[143:136] 	;
in4 = data[199:192] 	;
end
5 :begin
in1 = data[151:144] 	;
in2 = data[207:200] 	;
in3 = data[159:152] 	;
in4 = data[215:208] 	;
end
6 :begin
in1 = data[167:160] 	;
in2 = data[223:216] 	;
in3 = 0 	;
in4 = 0 	;
end
7 :begin
in1 = data[231:224] 	;
in2 = data[287:280] 	;
in3 = data[239:232] 	;
in4 = data[295:288] 	;
end
8 :begin
in1 = data[247:240] 	;
in2 = data[303:296] 	;
in3 = data[255:248] 	;
in4 = data[311:304] 	;
end
9 :begin
in1 = data[263:256] 	;
in2 = data[319:312] 	;
in3 = data[271:264] 	;
in4 = data[327:320] 	;
end
10 :begin
in1 = data[279:272] 	;
in2 = data[335:328] 	;
in3 = 0 	;
in4 = 0 	;
end
10 :begin
in1 = data[343:336] 	;
in2 = 0 	;
in3 = data[351:344] 	;
in4 = 0 	;
end
11 :begin
in1 = data[359:352] 	;
in2 = 0 	;
in3 = data[367:360] 	;
in4 = 0 	;
end
12 :begin
in1 = data[375:368] 	;
in2 = 0 	;
in3 = data[383:376] 	;
in4 = 0 	;
end
13 :begin
in1 = data[391:384] 	;
in2 = 0 	;
in3 = 0 	;
in4 = 0 	;
end
endcase


end

endmodule

