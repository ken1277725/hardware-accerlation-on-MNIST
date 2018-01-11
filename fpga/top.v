module top(
	input clk,
    input rst,
    
    input rx,
    output tx,

    output [4:0] led,

	output [3:0] DIGIT,
	output [6:0] DISPLAY
);



wire clk_4;
clock_divider #(4) CD01(clk_4,clk);
//wire number_valid;
wire [3:0] BCD;
wire number_valid;
Main main(
    .clk(clk_4),
    .reset(rst),

    .rx(rx),
    .tx(tx),
    .state_led(led),
    .ANSWER(BCD),

    .number_valid(number_valid)
);

wire [15:0] SSDBCD;
wire clk_13;
assign SSDBCD = number_valid ? {4'd10,4'd10,4'd10,BCD}:{4'd0,4'd0,4'd0,4'd0};
clock_divider #(13) CD00(clk_13,clk);

Seven_Segment_display Seven_Segment_display00(
    .clk(clk_13),
    .reset(rst),
    .BCD(SSDBCD),
    .DIGIT(DIGIT),
    .DISPLAY_OUT(DISPLAY)
);

endmodule
