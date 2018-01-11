
module baud_clock_divider (
    input wire clk,
    input wire reset,
    output reg PWM
);

	wire [31:0] count_max = 651;
	wire [31:0] count_duty = 325;
	reg [31:0] count;
	    
	always @(posedge clk, posedge reset) begin
	    if (reset) begin
	        count <= 0;
	        PWM <= 0;
	    end else if (count < count_max) begin
	        count <= count + 1;
			if(count < count_duty)
	            PWM <= 1;
	        else
	            PWM <= 0;
	    end else begin
	        count <= 0;
	        PWM <= 0;
	    end
	end

endmodule

