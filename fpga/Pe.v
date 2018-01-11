module file_info(
    input [15:0] file,
    output [15:0] file_size,
    output [15:0] memory_start,
    output [15:0] memory_end
);

    always @(*) begin
        if( 0 <= file && file <= 0 ) begin // unprocessed picture
            memory_start = 0;
            memory_end = 783;
        end else if( 1 <= file && file <= 32 ) begin // Core1
            memory_start = 784;
            memory_end = 808;
        end else if( 33 <= file && file <= 64 ) begin // Conv1 bias
            memory_start = 809;
            memory_end = 1592;
        end else if( 65 <= file && file <= 96 ) begin // Picture After conv1
            memory_start = 1593;
            memory_end = 2376;
        end else if( 97 <= file && file <= 128 ) begin // Picture After Maxpool1
            memory_start = 2377;
            memory_end = 2572;
        end else if( 129 <= file && file <= 160 ) begin // Picture After Stage1
            memory_start = 0;
            memory_end = 195;
        end else if( 161 <= file && file <= 2208 ) begin // Core2
            memory_start = 196;
            memory_end = 220;
        end else if( 2209 <= file && file <= 2272 ) begin // Conv2 bias
            memory_start = 221;
            memory_end = 416;
        end else if( 2273 <= file && file <= 2273 ) begin // Picture After conv2 _ old
            memory_start = 417;
            memory_end = 612;
        end else if( 2274 <= file && file <= 2337 ) begin // Picture After conv2 _ new
            memory_start = 613;
            memory_end = 808;
        end else if( 2338 <= file && file <= 2401 ) begin // Picture After Maxpool2
            memory_start = 809;
            memory_end = 857;
        end else if( 2402 <= file && file <= 2405 ) begin // Matrix Input
            memory_start = 0;
            memory_end = 783;
        end else if( 2406 <= file && file <= 2445 ) begin // Matrix
            memory_start = 784;
            memory_end = 1567;
        end else if( 2446 <= file && file <= 2446 ) begin // Matrix bias
            memory_start = 1568;
            memory_end = 1577;
        end else if( 2447 <= file && file <= 2447 ) begin // Answer
            memory_start = 1578;
            memory_end = 1587;
        end
    end

endmodule

module memory (
    input rx,
    output tx
);
    parameter IntSize = 8;
    
    wire [7:0] rx_data;
    wire tx_busy,rx_rdy;
    reg [7:0] tx_data;
    reg tx_en;
    
    rs232 RS232(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .tx(tx),

        .txdata(tx_data),
        .txdata_en(tx_en),
        .tx_busy(tx_busy),
        
        .rxdata(rx_data),
        .rxdata_rdy(rx_rdy)
    );
    
    reg [IntSize-1:0] file [0:1];
    wire [15:0] file_size,memory_start,memory_end;
    file_info FI({file[0],file[1]},file_size,memory_start,memory_end);
    
    reg [IntSize-1:0] memory [0:1600];
    reg [IntSize-1:0] next_memory [0:1600];

    reg [5:0]main_tmp_state,next_main_tmp_state;
    reg [5:0]upload_tmp_state,next_upload_tmp_state;
    reg [5:0]state,next_state;
    reg [7:0]bufferpos,next_bufferpos;
    reg readwrite,next_readwrite; // read = 0
    parameter READ = 0;
    parameter WRITE = 1;
   
    clk = base_9600;
    always @(*) begin
        next_state = state;
        next_main_tmp_state = main_tmp_state;
        next_upload_tmp_state = upload_tmp_state;
        next_bufferpos = bufferpos;
        next_readwrite = readwrite;
        case(state)

        endcase 
    end

endmodule



module PE1(clk , data , en ,fin , reset); 
    parameter IntSize   =   8;
    parameter CoreSize  =  25;
    parameter PicSize1  = 784;
    parameter PicSize2  = 196;
    parameter PicSize3  =  49;
    input clk;
    input en;
    input reset; 
    output fin;
    output [15:0] file;
    output mem_to_PE;
    output PE_to_mem;
    input rdy;
    input eof;
wire out ;
dotProduct dP(.in1(dpIn),.in2(cores),.clk(clk),.en(0),.out(out));
reg [10:0] dPState  ;
reg [10:0] n_dPState;

reg [CoreSize*IntSize : 0] cores   ;
reg [CoreSize*IntSize : 0] n_cores ;
reg [PicSize1*IntSize : 0] Pic1    ;
reg [PicSize2*IntSize : 0] Pic2    ;
reg [CoreSize*IntSize : 0] dPIn    ;

reg [15:0] n_file   ;
reg n_mem_to_PE     ;
reg n_PE_to_mem     ;
reg n_sub_file      ; 
wire sub_file       ;
reg [4:0] state , n_state ;
parameter [4:0] IDLE              = 5'd0;
parameter [4:0] STAGE1            = 5'd1;
parameter [4:0] IO                = 5'd2;
parameter [4:0] SEND_HEAD         = 5'd3;
parameter [4:0] SEND_FILE_INDEX   = 5'd4;
parameter [4:0] READ_GET_BYTE     = 5'd5;
parameter [4:0] WRITE_SEND_BYTE   = 5'd6;
parameter [4:0] WAIT_FOR_UPLOAD   = 5'd7;
parameter IO_FIN;
parameter [4:0] CAL_CONV          = 5'd8;
parameter [4:0] CAL_MAXPOOL       = 5'd9;
parameter [4:0] STAGE1_CHECK_END = 5'd10;
parameter [4:0] STAGE2           = 5'd11;
parameter [4:0] STAGE2_CHECK_END = 5'd12;
parameter [4:0] STAGE3           = 5'd13;
parameter [4:0] STAGE3_CHECK_END = 5'd14;
parameter [4:0] FIN              = 5'd15;
reg [11:0] FileIndex    ,   n_FileIndex    ;
reg [1:0]  ReadWrite    ,   n_ReadWrite    ;
reg [4:0] Temp_state    ,   n_Temp_state   ;

always @(posedge clk or posedge reset ) begin
    if(reset)begin
        state = IDLE;
    end

    else begin
        state       =   n_state;
        file        =   n_file ;
        state       =   n_state;
        sub_file    =   n_sub_file;
        mem_to_PE   =   n_mem_to_PE;
        PE_to_mem   =   n_PE_to_mem;
        Tcnter      =   n_Tcnter;
    end
end
always @* begin
    n_mem_to_PE = mem_to_PE ;
    n_PE_to_mem = PE_to_mem ;
    n_file      = file      ;
    n_state     = state     ;
    n_sub_file  = sub_file  ;
    n_Tcnter    = Tcnter    ;
    case(state)
        IDLE:begin
            n_Tcnter = 0;
        end
        IO:begin
            tx_en = 0;
            next_state = SEND_HEAD;
        end
        SEND_HEAD:begin
            tx_en = 0;
            if(!tx_busy)begin
                tx_data = (readwrite == READ) ? 8'd82 : 8'd87; // R : W
                tx_en = 1;
                next_state = WAIT_FOR_UPLOAD;
                next_upload_tmp_state = SEND_FILE_INDEX;
                next_bufferpos = 0;
            end
        end
        SEND_FILE_INDEX:begin
            tx_en = 0;
            if(!tx_busy && bufferpos < 2)begin
                tx_data = file[bufferpos];
                    next_bufferpos = bufferpos + 1;
                    next_state = WAIT_FOR_UPLOAD;
                    next_upload_tmp_state = SEND_FILE_INDEX;
                end else if(bufferpos >= 2)begin
                    next_state = (readwrite == READ) ? READ_GET_BYTE : WRITE_SEND_BYTE;    
                    next_bufferpos = memory_start;
                end
            end
        end
        READ_GET_BYTE:begin
            tx_en = 0;
            if(rx_rdy && bufferpos <= memory_end)begin
                next_memory[bufferpos] = rx_data;
                next_bufferpos = bufferpos + 1;
            end else if (bufferpos > memory_end) begin
                next_state = IO_FIN;
            end
        end
        WRITE_SEND_BYTE:begin
            tx_en = 0;
            if(!tx_busy && bufferpos <= memory_end)begin
                tx_data = memory[bufferpos];
                next_bufferpos = bufferpos + 1;
                next_state = WAIT_FOR_UPLOAD;
                next_upload_tmp_state = WRITE_SEND_BYTE;
            end else if(bufferpos > memory_end)begin
                next_state = IO_FIN;    
            end
        end

        WAIT_FOR_UPLOAD:begin
            tx_en = 1;
            if(!tx_busy)begin
                next_state = upload_tmp_state;
            end
        end

        IO_FIN:begin
            next_state = main_tmp_state;
        end
        CAL_CONV:begin
        end
        CAL_MAXPOOL:begin
        end
        STAGE1:begin
            if(Tcnter==0)begin
                n_Tcnter    = Tcnter + 1    ;
                n_FileIndex = 0             ;
                n_ReadWrite = 2'b10         ;
                n_Temp_state= STAGE1        ;
                n_state     = IO            ;
            end
                //load Cores
                n_FileIndex = 32+Tcnter     ; // 33~64 
                n_ReadWrite = 2'b10         ;
                n_Temp_state= CAL_CONV      ;
                n_state     = IO            ;
            end
        end
        STAGE1_CHECK_END:begin
                n_ReadWrite = 2'b01         ;
                n_Temp_state= STAGE1        ;
                n_state     = IO            ;
            end
        end
        STAGE2:begin
            if(Tcnter[0]==0)begin
                n_Tcnter    = Tcnter + 1    ;
            end
            end
        STAGE2_CHECK_END:begin
            n_Temp_state= STAGE2;
            if((Tcnter/2)%32==0)begin
                n_FileIndex = (Tcnter/64)+64;
                n_ReadWrite = 2'b01;    
            end
            if(Tcnter==4096) n_Temp_state = STAGE3;
        end
        STAGE3:begin

        end
        STAGE3_CHECK_END:begin

        end
        FIN:begin

        end
    endcase

end

endmodule 
