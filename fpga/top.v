module top(
	input clk,
    input rst,
    input rx,
    output [2:0] recog_state,
    output [7:0] data_rx,
	output [3:0] DIGIT,
	output [6:0] DISPLAY
);



wire clk_10;
clock_divider #(10) CD01(clk_10,clk);
//wire number_valid;
wire [3:0] BCD;
recog recog00(
    .clk(clk_10),
    .rst(rst),
    .rx_in(data_rx),
    .rx_valid(rdy),
    .out_number(BCD),
    .out_state(recog_state),
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
