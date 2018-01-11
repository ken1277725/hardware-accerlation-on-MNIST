
module file_info(
    input [15:0] file,
    output reg [15:0] memory_start,
    output reg [15:0] memory_end
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
