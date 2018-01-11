
module Main(
    input clk,
    input reset,
    
    input rx,
    output tx

    output [4:0] state_led,
    output [3:0] ANSWER,

    output number_valid 
); 
    parameter IntSize   =   8;
    parameter CoreSize  =  25;
    parameter PicSize1  = 784;
    parameter PicSize2  = 196;
    parameter PicSize3  =  49;

    //  RS232 Module    
    wire [7:0] rx_data;
    wire tx_busy,rx_rdy;
    reg [7:0] tx_data;
    reg tx_en;
    reg clk_9600;
    rs232 RS232(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .tx(tx),

        .txdata(tx_data),
        .txdata_en(tx_en),
        .tx_busy(tx_busy),
        
        .rxdata(rx_data),
        .rxdata_rdy(rx_rdy),

        .clk_9600(clk_9600)
    );
    
    //  FileInfo Module
    wire [15:0] file_size,memory_start,memory_end;
    file_info FI({file[0],file[1]},file_size,memory_start,memory_end);


    parameter IntSize   =   8;
    parameter CoreSize  =  25;
    parameter PicSize1  = 784;
    parameter PicSize2  = 196;
    parameter PicSize3  =  49;

    
    reg [2:0] stage , n_stage ;
    reg [4:0] state , n_state ;
    reg [20:0] cal_cnt , n_cal_cnt ;

    assign state_led = state;
    
    //parameter for state : 
    parameter [4:0] IDLE              = 5'd0;
    parameter [4:0] STAGE1            = 5'd1;
    parameter [4:0] IO                = 5'd2;
    parameter [4:0] SEND_HEAD         = 5'd3;
    parameter [4:0] SEND_FILE_INDEX   = 5'd4;
    parameter [4:0] READ_GET_BYTE     = 5'd5;
    parameter [4:0] WRITE_SEND_BYTE   = 5'd6;
    parameter [4:0] WAIT_FOR_UPLOAD   = 5'd7;
    parameter [4:0] CAL_CONV          = 5'd8;
    parameter [4:0] CAL_MAXPOOL       = 5'd9;
    parameter [4:0] STAGE1_CHECK_END = 5'd10;
    parameter [4:0] STAGE2           = 5'd11;
    parameter [4:0] STAGE2_CHECK_END = 5'd12;
    parameter [4:0] STAGE3           = 5'd13;
    parameter [4:0] STAGE3_CHECK_END = 5'd14;
    parameter [4:0] FIN              = 5'd15;
    parameter [4:0] CAL_ADD          = 5'd16;
    parameter [4:0] CAL_MULTI        = 5'd17;
    parameter [4:0] IO_FIN           = 5'd18;

    reg [11:0] FileIndex    ,   n_FileIndex    ;
    
    parameter READ = 0;
    parameter WRITE = 1;

    reg [5:0] upload_tmp_state  ,   n_upload_tmp_state;
    reg [7:0] bufferpos         ,   n_bufferpos       ;
   
    reg [15:0] FileIndex    ,   n_FileIndex    ;
    reg [1:0]  ReadWrite    ,   n_ReadWrite    ;
    reg [4:0] Temp_state    ,   n_Temp_state   ;
    reg [20:0] Tcnter       ,   n_Tcnter       ;

    //TOD ram memory 

    reg [IntSize-1:0] memory [0:2500];
    reg [IntSize-1:0] n_memory [0:2500];
    reg [2501 * IntSize-1 :0 ] ram   ;

    // ram = {memory[0],memory[1]};
    // Set memory for var
    // give the right var  //ref : http://goo.gl/5NgdCK
    //TODO: assign those val !!!!
    //Stage 1 
    reg [IntSize*PicSize1-1:0] unprocessedPicture      ; 
    reg [IntSize*25-1 :0] Core1                   ;
    reg [IntSize*PicSize1-1:0] Conv1Bias               ;
    reg [IntSize*PicSize1-1:0] PictureAfterConv1       ;
    reg [IntSize*196-1:0] PictureAfterMaxpool1    ;
    
    //Stage 2 
    reg [IntSize*196-1:0] PictureAfterStage1      ;
    reg [IntSize*25-1 :0] Core2                   ;
    reg [IntSize*196-1:0] Conv2Bias               ;
    reg [IntSize*196-1:0] PictureAfterConv2Old    ;
    reg [IntSize*196-1:0] PictureAfterConv2New    ;
    reg [IntSize*49-1 :0] PictureAfterMaxpool2    ;
    
    //Stage 3
    reg [IntSize*PicSize1-1:0] MatrixInput        ;
    reg [IntSize*PicSize1-1:0] Matrix             ;
    reg [IntSize*10-1:0      ] MartrixBias        ;
    reg [IntSize*10-1:0      ] Answer             ;    


//conv module 
//data , dPstate , core ,out

    wire [IntSize-1:0] out_c28;
    wire [IntSize-1:0] out_c14;
    
    conv28x28 c28(.data(unprocessedPicture),.dPstate(cal_cnt),.core(Core1),.out(out_c28));
    conv14x14 c14(.data(PictureAfterStage1),.dPstate(cal_cnt),.core(Core2),.out(out_c14));

//maxpool module
    wire [IntSize-1:0] out_m14;
    wire [IntSize-1:0] out_m7 ;
    
    maxpool14x14 m14(.data(PictureAfterConv1),.maxPoolState(cal_cnt),.out(out_m14))  ;
    maxpool7x7    m7(.data(PictureAfterConv2New),.maxPoolState(cal_cnt),.out(out_m7));

always @(posedge clk or posedge reset ) begin
    if(reset)begin
        state = IDLE;
    end
    // TODO 把這裡的變數弄好
    else begin
        state       =   n_state;
        state       =   n_state;
        Tcnter      =   n_Tcnter;
        stage       =   n_stage ; 
        cal_cnt     =   n_cal_cnt;
    end
end


always @* begin
    n_file      = file      ;
    n_state     = state     ;
    n_Tcnter    = Tcnter    ;
    n_stage     = stage     ;
    n_cal_cnt   = cal_cnt   ;
    n_state     = state     ;
    n_Tcnter    = Tcnter    ;
    n_stage     = stage     ;
    
    // IO varibles default values
    tx_en = 0;
    txdata = 0;
    n_upload_tmp_state = upload_tmp_state;
    n_bufferpos = bufferpos;

    case(state)
        IDLE:begin
            n_Tcnter = 0;
            n_state = IO;
            n_FileIndex = 0;
            n_ReadWrite = READ;
            n_Temp_state = CAL_CONV; 
        end
        
        IO:begin
            n_state = SEND_HEAD;
        end
        
        SEND_HEAD:begin
            if(!tx_busy)begin
                tx_data = (readwrite == READ) ? 8'd82 : 8'd87; // R : W
                n_state = WAIT_FOR_UPLOAD;
                n_upload_tmp_state = SEND_FILE_INDEX;
                n_bufferpos = 0;
            end
        end

        SEND_FILE_INDEX:begin
            if(!tx_busy && bufferpos < 2)begin
                    tx_data = file[bufferpos<<3+7:bufferpos<<3];
                    n_bufferpos = bufferpos + 1;
                    n_state = WAIT_FOR_UPLOAD;
                    n_upload_tmp_state = SEND_FILE_INDEX;
                end else if(bufferpos >= 2)begin
                    n_state = (readwrite == READ) ? READ_GET_BYTE : WRITE_SEND_BYTE;    
                    n_bufferpos = memory_start;
                end
            end
        end

        READ_GET_BYTE:begin
            if(rx_rdy && bufferpos <= memory_end)begin
                n_memory[bufferpos] = rx_data;
                n_bufferpos = bufferpos + 1;
            end else if (bufferpos > memory_end) begin
                n_state = IO_FIN;
            end
        end
        
        WRITE_SEND_BYTE:begin
            if(!tx_busy && bufferpos <= memory_end)begin
                tx_data = memory[bufferpos];
                n_bufferpos = bufferpos + 1;
                n_state = WAIT_FOR_UPLOAD;
                n_upload_tmp_state = WRITE_SEND_BYTE;
            end else if(bufferpos > memory_end)begin
                n_state = IO_FIN;    
            end
        end
        
        WAIT_FOR_UPLOAD:begin
            tx_en = 1;
            if(!tx_busy)begin
                n_state = upload_tmp_state;
            end
        end

        IO_FIN:begin
            next_state = Temp_state;
        end

        CAL_CONV:begin
            //28*28 CONV
            if(stage == 1) begin
                if(cal_cnt<784)begin
                    n_cal_cnt = cal_cnt + 1; 
                    n_memory[1593+cal_cnt] = out_c28;
                end
                else begin
                    n_state = STAGE1_CHECK_END;
                end
            end
            //14*14 CONV
            else if(stage == 2) begin
                if(cal_cnt<196) begin
                    n_cal_cnt = cal_cnt + 1;
                    //Warning -> tihs may cause defects ! 
                    n_memory[613+cal_cnt] = memory[613+cal_cnt] + out_c14; 
                end
                else begin
                    n_state = STAGE2_CHECK_END;
                end
            end
        end
        CAL_MAXPOOL:begin
            //28*28 MAXPOOL
            if(stage == 1) begin
                if(cal_cnt<784)begin
                    n_cal_cnt = cal_cnt + 1; 
                    n_memory[2377+cal_cnt] = out_m14;
                end
                else begin
                    n_state = STAGE1_CHECK_END;
                end
            end
            //14*14 MAX_POOL
            else if(stage == 2) begin
                if(cal_cnt<196) begin
                    n_cal_cnt = cal_cnt + 1;
                    n_memory[809+cal_cnt] = out_m7;
                end
                else begin
                    n_state = STAGE2_CHECK_END;
                end
            end
        end
        CAL_ADD:begin
            if(stage == 1 )begin
                if(cal_cnt<784) begin
                    n_cal_cnt = cal_cnt + 1;
                    n_memory[cal_cnt+1593] = memory[cal_cnt+1593] + memory[809];    
                end
                else begin
                    n_state = STAGE1_CHECK_END;
                end
            end
            else if(stage == 2)begin
                if(cal_cnt<196) begin
                    n_cal_cnt = cal_cnt + 1;
                    n_memory[cal_cnt+613] = memory[cal_cnt+613] + memory[221];    
                end
                else begin
                    n_state = STAGE2_CHECK_END;
                end
            end
            else if(stage == 3) begin
                if(cal_cnt<10) begin
                    n_cal_cnt = cal_cnt + 1 ;
                    n_memory[1578+cal_cnt ] = memory[1578+cal_cnt] + memory[1568+cal_cnt]; 
                end
                else begin
                    n_state = STAGE3_CHECK_END;
                end
            end
        end
        CAL_MULTI:begin
            if(cal_cnt<784)begin
                n_cal_cnt = cal_cnt ; 
                n_memory[Tcnter[20:3]+1578 ] = memory[Tcnter[20:3]+1578 ] + memory[cal_cnt] * memory[cal_cnt + 784 ];
            end
            else begin
                n_state = STAGE3_CHECK_END ;
            end
        end

        STAGE1:begin
            n_stage     = 1 ;
            n_cal_cnt   = 0 ;
            if(Tcnter==0)begin
                //load unprocessed picture 

                n_Tcnter    = Tcnter + 1    ;
                n_FileIndex = 0             ;
                n_ReadWrite = 2'b10         ;
                n_Temp_state= STAGE1        ;
                n_state     = IO            ;
            end
            else if(0<Tcnter && Tcnter <=32)begin
                //load Cores
                
                //n_Tcnter
                n_FileIndex = Tcnter        ; // 1 ~ 32
                n_ReadWrite = 2'b10         ;
                n_Temp_state= CAL_CONV      ;
                n_state     = IO            ;
            end
            else if(32<Tcnter && Tcnter <=96 && Tcnter[0]==1)begin
                //load bias 
                
                n_Tcnter     = Tcnter +1     ;
                n_FileIndex  = 17+Tcnter[20:1]; // 33 ~ 64  => (T/2) + 17
                n_ReadWrite  = 2'b10         ;
                n_Temp_state = STAGE1        ;
                n_state      = IO            ; 
            end
            //load Picture After Conv 1 
            else if(32<Tcnter && Tcnter <=96 && Tcnter[0]==0)begin    
                //load Picture After Conv1 and calculate bias 
                
                //n_Tcnter
                n_FileIndex  = 49+Tcnter[20:1]; // 65 ~ 96 => (T/2)+49
                n_ReadWrite  = 2'b10         ;
                n_Temp_state = CAL_ADD       ; 
                n_state      = IO            ; 
            end
            //MAXPOOL
            else if(96<Tcnter && Tcnter <= 128)begin
                //load Picture After Conv1 and calcluate maxpool
                
                //n_Tcnter
                n_FileIndex  = Tcnter - 32   ;  //65~96 
                n_ReadWrite  = 2'b10         ;
                n_Temp_state = CAL_MAXPOOL   ;
                n_state      = IO            ;
            end
        end

        STAGE1_CHECK_END:begin
            //CONV SAVE
            if(0<Tcnter && Tcnter <=32)begin
                //save PictureAfterConv1

                n_Tcnter    = Tcnter + 1    ;
                n_FileIndex = 64+Tcnter     ; // save at 65~96 
                n_ReadWrite = 2'b01         ;
                n_Temp_state= STAGE1        ;
                n_state     = IO            ;
            end
            //BIAS SAVE
            else if(32<Tcnter && Tcnter <= 96)begin
                //save PictureAfterConv1

                n_Tcnter    = Tcnter + 1    ;
                n_FileIndex  = 49+Tcnter[20:1]; // save at 65 ~ 96 
                n_ReadWrite  = 2'b01         ;
                n_Temp_state = STAGE1        ;
                n_state      = IO            ; 
            end
            //MAXPOOL SAVE 
            else if(96<Tcnter && Tcnter < 128)begin
                //save PictureAfterMaxpool1

                n_Tcnter    = Tcnter + 1     ; // save at 97 ~ 127 
                n_FileIndex  = Tcnter        ;
                n_ReadWrite  = 2'b01         ;
                n_Temp_state = STAGE1        ;
                n_state      = IO            ;     
            end
            //MAXPOOL SAVE & END
            else if(Tcnter == 128)begin
                //save PictureAfterMaxpool1 and goto STAGE2

                n_Tcnter    = 0    ;           //finish
                n_FileIndex  = Tcnter        ; // save at 128
                n_ReadWrite  = 2'b01         ;
                n_Temp_state = STAGE2        ;
                n_state      = IO            ;    
            end
        end

        STAGE2:begin
            n_stage = 2 ;
            n_cal_cnt   = 0         ;
            if(Tcnter[0]==0)begin               //unused for Tcnter 0 
                n_Tcnter    = Tcnter + 1    ;
                n_state     = STAGE2        ;
            end

            else if(0<Tcnter&&Tcnter<=4096)begin
                
                if(Tcnter[0]==1)begin
                    //load PicAfterStage 

                    n_Tcnter = Tcnter +1    ;
                    n_FileIndex = Tcnter[5:1]+129;  //load 129~160 (T%64/2)+129
                    n_state  = IO           ;
                    n_Temp_state = STAGE2   ;
                    n_ReadWrite  = 2'b10    ;
                end
                else begin
                     //load Core2
                     
                    //n_Tcnter
                    n_FileIndex = Tcnter[20:1]+160; //load 161~2208 T/2+160  Warning !!
                    n_state  = IO           ;
                    n_Temp_state = CAL_CONV ;
                    n_ReadWrite  = 2'b10    ;
                end
            end

            else if(4096<Tcnter && Tcnter <=4224) begin
            //load conv2_bias 
                if(Tcnter[0] == 1)begin

                    
                    n_FileIndex = Tcnter[20:1]+161; // T / 2  -2048 + 2209
                    n_state     = IO        ;
                    n_ReadWrite = 2'b10     ;
                    n_Temp_state= STAGE2    ;
                end
                else begin

                    n_FileIndex = Tcnter[20:1]+225; // T / 2 = 2049 ->2274 
                    n_state     =  IO        ;
                    n_ReadWrite = 2'b10      ;
                    n_Temp_state= CAL_ADD    ;
                end
            end

            //MAXPOOL
            else if(4224<Tcnter && Tcnter <=4288) begin
                n_FileIndex = Tcnter  - 1951 ;
                n_state     = IO             ;
                n_ReadWrite = 2'b10          ;
                n_Temp_state= CAL_MAXPOOL    ;
                n_cal_cnt   = 0             ;
            end


        STAGE2_CHECK_END:begin
            //SAVE Wegiht 
            if(0<Tcnter && Tcnter <= 4096)begin
                n_Tcnter = Tcnter +1        ;
                if(Tcnter[6:0]==0)begin    //Tcnter % 64 =0
                    n_FileIndex = Tcnter[20:6]+2273; // 2274~2337
                    n_state  = IO           ;
                    n_Temp_state = STAGE2   ;
                    n_ReadWrite  = 2'b01    ;
                end 
                else begin
                    n_state = STAGE2        ;
                end
            end
            //SAVE BIAS
            else if(4096<Tcnter && Tcnter <=4224)begin
                n_Tcnter = Tcnter +1     ;
                n_FileIndex = Tcnter[20:1]+225; // T / 2 = 2049 ->2274 
                n_state     =  IO        ;
                n_ReadWrite = 2'b01      ;
                n_Temp_state= STAGE2     ;
            end
            else if(4224<Tcnter && Tcnter <4288) begin
                n_Tcnter = Tcnter +1        ;
                n_FileIndex = Tcnter  - 1887;
                n_state     = IO            ;
                n_ReadWrite = 2'b01         ;
                n_Temp_state= STAGE2        ;
            end
            else if(Tcnter ==4288) begin
                n_Tcnter = 0       ;
                n_FileIndex = Tcnter  - 1887;
                n_state     = IO            ;
                n_ReadWrite = 2'b01         ;
                n_Temp_state= STAGE3        ;
            end
        end

        STAGE3:begin
            n_stage = 3 ;
            if(Tcnter <80) begin
                if(Tcnter[0] == 0 )begin
                //load Matrix Input
                    n_Tcnter = Tcnter +1            ;
                    n_FileIndex = Tcnter[2:1] +2402 ;
                    n_state     = IO                ;
                    n_ReadWrite = 2'b10             ;
                    n_Temp_state= STAGE3            ; 
                end
                else if (Tcnter[0]==1) begin
                //load Matrix 
                    n_FileIndex = Tcnter[20:1] +2406;
                    n_state     = IO                ;
                    n_ReadWrite = 2'b10             ;
                    n_Temp_state= CAL_MULTI         ;
                    n_cal_cnt   = 0         ; 
                end
            end
            else if(Tcnter ==80) begin
                n_FileIndex = 2446              ;
                n_state     = IO                ;
                n_ReadWrite = 2'b10             ;
                n_Temp_state= CAL_ADD           ; 
                n_cal_cnt   = 0                 ;
            end
        end

        STAGE3_CHECK_END:begin
            if(Tcnter < 80) begin
                n_Tcnter = Tcnter +1            ;
                n_state = STAGE3;

            end
            else begin
                n_state = FIN;
            end
        end

        FIN:begin
            //TODO
            //show LED 
        end
    endcase
end
endmodule 
