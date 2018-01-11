module DFF(clk, rst_n, Q, D);
    parameter width = 4;
    parameter init = 0;

    input clk, rst_n;

    input [width-1:0]D;
    output reg [width-1:0]Q;

    always@(posedge clk or posedge rst_n)begin
        if(rst_n)begin
            Q <= init;
        end else begin
            Q <= D;
        end
    end
endmodule


module Seven_Segment_display_decoder(BCD,DISPLAY);
    input [3:0] BCD;
    output reg [6:0] DISPLAY;

    always @* begin
        case (BCD)
            4'd0: DISPLAY = 7'b1000000;
            4'd1: DISPLAY = 7'b1111001;
            4'd2: DISPLAY = 7'b0100100;
            4'd3: DISPLAY = 7'b0110000;
            4'd4: DISPLAY = 7'b0011001;
            4'd5: DISPLAY = 7'b0010010;
            4'd6: DISPLAY = 7'b0000010;
            4'd7: DISPLAY = 7'b1111000;
            4'd8: DISPLAY = 7'b0000000;
            4'd9: DISPLAY = 7'b0010000;
            default: DISPLAY = 7'b1111111;
        endcase
    end
endmodule

module Seven_Segment_display(clk,reset,BCD,DIGIT,DISPLAY_OUT);
    input clk;
    input reset;
    input [15:0] BCD;
    output reg [3:0] DIGIT;
    output reg [6:0] DISPLAY_OUT;

    wire [6:0] DISPLAY [3:0];
    /*  Seven Segment Display  */
    Seven_Segment_display_decoder SSDD0(BCD[3:0],DISPLAY[0]);
    Seven_Segment_display_decoder SSDD1(BCD[7:4],DISPLAY[1]);
    Seven_Segment_display_decoder SSDD2(BCD[11:8],DISPLAY[2]);
    Seven_Segment_display_decoder SSDD3(BCD[15:12],DISPLAY[3]);


    wire [2:0] curr_count;
    reg [2:0] next_count;
    DFF #(3,3'd0) SEG7DFF(clk,reset,curr_count,next_count);
    always @(*) begin
        case (curr_count)
            2'b00:begin
                next_count = 2'b01;
                DIGIT = 4'b1110;
                DISPLAY_OUT = DISPLAY[0];
            end
            2'b01:begin
                next_count = 2'b10;
                DIGIT = 4'b1101;
                DISPLAY_OUT = DISPLAY[1];
            end
            2'b10:begin
                next_count = 2'b11;
                DIGIT = 4'b1011;
                DISPLAY_OUT = DISPLAY[2];
            end
            2'b11:begin
                next_count = 2'b00;
                DIGIT = 4'b0111;
                DISPLAY_OUT = DISPLAY[3];
            end
        endcase
    end
endmodule
