module dotProduct ( in1,in2,out);
    parameter ArraySize = 25;
    parameter   IntSize =  8;
    input [ArraySize * IntSize-1 : 0] in1;
    input [ArraySize * IntSize-1 : 0] in2;
    output [IntSize-1:0]              out;
	assign out =
		in1[7:0]	 * in2[7:0]	+
		in1[15:8]	 * in2[15:8]	+
		in1[23:16]	 * in2[23:16]	+
		in1[31:24]	 * in2[31:24]	+
		in1[39:32]	 * in2[39:32]	+
		in1[47:40]	 * in2[47:40]	+
		in1[55:48]	 * in2[55:48]	+
		in1[63:56]	 * in2[63:56]	+
		in1[71:64]	 * in2[71:64]	+
		in1[79:72]	 * in2[79:72]	+
		in1[87:80]	 * in2[87:80]	+
		in1[95:88]	 * in2[95:88]	+
		in1[103:96]	 * in2[103:96]	+
		in1[111:104]	 * in2[111:104]	+
		in1[119:112]	 * in2[119:112]	+
		in1[127:120]	 * in2[127:120]	+
		in1[135:128]	 * in2[135:128]	+
		in1[143:136]	 * in2[143:136]	+
		in1[151:144]	 * in2[151:144]	+
		in1[159:152]	 * in2[159:152]	+
		in1[167:160]	 * in2[167:160]	+
		in1[175:168]	 * in2[175:168]	+
		in1[183:176]	 * in2[183:176]	+
		in1[191:184]	 * in2[191:184]	+
		in1[199:192]	 * in2[199:192]	;

endmodule 


module maxPool2x2(in1,in2,in3,in4,out1);
    parameter   IntSize =  8;
	input 	[IntSize-1  : 0] in1,in2,in3,in4;
	output	[IntSize-1  : 0] out1;
	wire [IntSize-1 : 0] a,b;
	assign a = (in1>in2) ? in1 : in2 ;
	assign b = (in3>in4) ? in3 : in4 ;
	assign out1 = (a>b)  ?   a :   b ; 
endmodule
