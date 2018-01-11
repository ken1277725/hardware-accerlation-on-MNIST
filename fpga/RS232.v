

module clock_divider(clk_div,clk);
    parameter n = 4;
    
    input clk;
    output clk_div;

    reg [n-1:0] num;
    wire [n-1:0] next_num;

    always @(posedge clk) begin
        num <= next_num;
    end

    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule


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


module receiver(
	input wire rx,
	input wire rst,
	input wire clk_9600_16,
	output reg rdy,
	output reg [7:0] data
);



	parameter RX_STATE_START	= 2'b00;
	parameter RX_STATE_DATA		= 2'b01;
	parameter RX_STATE_STOP		= 2'b10;

	reg [1:0] state, next_state;
	reg [3:0] sample, next_sample;
	reg [3:0] bitpos, next_bitpos;
	reg [7:0] next_data;
	reg next_rdy;
	

	always @(posedge clk_9600_16 or posedge rst) begin
		if (rst)begin
			state <= RX_STATE_START;
			data <= 0;
			sample <= 0;
			bitpos <= 0;
			rdy <= 0;
		end else begin
			state <= next_state;
			data <= next_data;
			sample <= next_sample;
			bitpos <= next_bitpos;
			rdy <= next_rdy;
		end
	end

	always @(*) begin
		next_state = state;
		next_bitpos = bitpos;
		next_sample = sample;
		next_data = data;
		next_rdy = rdy;

		case (state)
			RX_STATE_START: begin
				if (!rx || sample != 0)begin
					next_sample = sample + 4'b1;
					next_rdy = 0;
				end

				if (sample == 15) begin
					next_data = 0;
					next_state = RX_STATE_DATA;
					next_bitpos = 0;
					next_sample = 0;
				end
			end
			RX_STATE_DATA: begin
				next_sample = sample + 4'b1;
				if (sample == 4'd8) begin
					next_sample = sample + 4'b1;
					next_data[bitpos[2:0]] = rx;
					next_bitpos = bitpos + 4'b1;
				end
				if (bitpos == 8 && sample == 15)
					next_state = RX_STATE_STOP;
			end
			RX_STATE_STOP: begin
				if (sample == 15 || (sample >= 8 && !rx)) begin
					next_state = RX_STATE_START;
					next_rdy = 1;
					next_sample = 0;
				end else begin
					next_sample = sample + 4'b1;
				end
			end
			default: begin
				next_state = RX_STATE_START;
			end
		endcase
	end


endmodule



module transmitter(
    input wire [7:0] din,
    input wire wr_en,
    input wire clk_50m,
    input wire rst,
    input wire clken,
    output reg tx,
    output wire tx_busy
);

parameter STATE_IDLE	= 2'b00;
parameter STATE_START	= 2'b01;
parameter STATE_DATA	= 2'b10;
parameter STATE_STOP	= 2'b11;

reg [7:0] data = 8'h00;
reg [2:0] bitpos = 3'h0;
reg [1:0] state = STATE_IDLE;

always @(posedge clk_50m or posedge rst) begin
    case (state)
        STATE_IDLE: begin
            if (wr_en) begin
                state <= STATE_START;
                data <= din;
                bitpos <= 3'h0;
            end
        end
        STATE_START: begin
            if (clken) begin
                tx <= 1'b0;
                state <= STATE_DATA;
            end
        end
        STATE_DATA: begin
            if (clken) begin
                if (bitpos == 3'h7)
                    state <= STATE_STOP;
                else
                    bitpos <= bitpos + 3'h1;
                tx <= data[bitpos];
            end
        end
        STATE_STOP: begin
            if (clken) begin
                tx <= 1'b1;
                state <= STATE_IDLE;
            end
        end
        default: begin
            tx <= 1'b1;
            state <= STATE_IDLE;
        end
	endcase

    if(rst)begin
        tx <= 1;
        state <= STATE_IDLE;
        data <= 0;
        bitpos <= 0;
    end
end

assign tx_busy = (state != STATE_IDLE);

endmodule

module rs232(
    input wire clk,
    input wire rst,
    input wire rx,
    output wire tx,

    input wire txdata_en,
    input wire [7:0] txdata,
    input wire tx_busy,

    output wire rxdata_rdy,
    output wire [7:0] rxdata
);


wire clk_9600;
baud_clock_divider CD9600(clk,rst,clk_9600_16);
clock_divider CD16(clk_9600,clk_9600_16);

wire out;
onepulse O1(out,txdata_en,clk_9600);

transmitter T1(
     .din(txdata),
     .wr_en(send),
     .clk_50m(clk_9600),
     .rst(rst),
     .clken(1),
     .tx(tx),
     .tx_busy(tx_busy)
);
    

receiver R1(
	 .rx(rx),
	 .rst(rst),
	 .clk_9600_16(clk_9600_16),
	 .rdy(rxdata_rdy),
	 .data(rxdata)
);
endmodule
