module conv28x28(data , dPstate , core ,out);
    parameter ArraySize = 25;
    parameter   IntSize =  8;
    input  wire [784*IntSize-1:0] data;
    input wire [20:0] dPstate;
    input wire [ArraySize*IntSize-1:0] core;
    output wire [7:0] out;
    reg  [ArraySize*IntSize-1:0]  dPIn;

dotProduct dot1(.in1(dPIn) , .in2(core) , .out(out)); 
    wire [20:0] inI,inJ;
    assign inI = dPstate / 28;
    assign inJ = dPstate % 28; 
    wire [7:0] DATA [0:24];
    assign DATA[0] = (inI-2<0 || inJ-2<0 || inI-2>27 || inJ-2>27) ? 0 : data[(inI-2)*28 + inJ-2 ];
    assign DATA[1] = (inI-2<0 || inJ-1<0 || inI-2>27 || inJ-1>27) ? 0 : data[(inI-2)*28 + inJ-1 ];
    assign DATA[2] = (inI-2<0 || inJ  <0 || inI-2>27 || inJ  >27) ? 0 : data[(inI-2)*28 + inJ   ];
    assign DATA[3] = (inI-2<0 || inJ+1<0 || inI-2>27 || inJ+1>27) ? 0 : data[(inI-2)*28 + inJ+1 ];
    assign DATA[4] = (inI-2<0 || inJ+2<0 || inI-2>27 || inJ+2>27) ? 0 : data[(inI-2)*28 + inJ+2 ];
    
    assign DATA[5] = (inI-1<0 || inJ-2<0 || inI-1>27 || inJ-2>27) ? 0 : data[(inI-1)*28 + inJ-2 ];
    assign DATA[6] = (inI-1<0 || inJ-1<0 || inI-1>27 || inJ-1>27) ? 0 : data[(inI-1)*28 + inJ-1 ];
    assign DATA[7] = (inI-1<0 || inJ  <0 || inI-1>27 || inJ  >27) ? 0 : data[(inI-1)*28 + inJ   ];
    assign DATA[8] = (inI-1<0 || inJ+1<0 || inI-1>27 || inJ+1>27) ? 0 : data[(inI-1)*28 + inJ+1 ];
    assign DATA[9] = (inI-1<0 || inJ+2<0 || inI-1>27 || inJ+2>27) ? 0 : data[(inI-1)*28 + inJ+2 ];
    
    assign DATA[10] = (inI  <0 || inJ-2<0 || inI  >27 || inJ-2>27) ? 0 : data[(inI  )*28 + inJ-2 ];
    assign DATA[11] = (inI  <0 || inJ-1<0 || inI  >27 || inJ-1>27) ? 0 : data[(inI  )*28 + inJ-1 ];
    assign DATA[12] = (inI  <0 || inJ  <0 || inI  >27 || inJ  >27) ? 0 : data[(inI  )*28 + inJ   ];
    assign DATA[13] = (inI  <0 || inJ+1<0 || inI  >27 || inJ+1>27) ? 0 : data[(inI  )*28 + inJ+1 ];
    assign DATA[14] = (inI  <0 || inJ+2<0 || inI  >27 || inJ+2>27) ? 0 : data[(inI  )*28 + inJ+2 ];
    
    assign DATA[15] = (inI+1<0 || inJ-2<0 || inI+1>27 || inJ-2>27) ? 0 : data[(inI+1)*28 + inJ-2 ];
    assign DATA[16] = (inI+1<0 || inJ-1<0 || inI+1>27 || inJ-1>27) ? 0 : data[(inI+1)*28 + inJ-1 ];
    assign DATA[17] = (inI+1<0 || inJ  <0 || inI+1>27 || inJ  >27) ? 0 : data[(inI+1)*28 + inJ   ];
    assign DATA[18] = (inI+1<0 || inJ+1<0 || inI+1>27 || inJ+1>27) ? 0 : data[(inI+1)*28 + inJ+1 ];
    assign DATA[19] = (inI+1<0 || inJ+2<0 || inI+1>27 || inJ+2>27) ? 0 : data[(inI+1)*28 + inJ+2 ];
    
    assign DATA[20] = (inI+2<0 || inJ-2<0 || inI+2>27 || inJ-2>27) ? 0 : data[(inI+2)*28 + inJ-2 ];
    assign DATA[21] = (inI+2<0 || inJ-1<0 || inI+2>27 || inJ-1>27) ? 0 : data[(inI+2)*28 + inJ-1 ];
    assign DATA[22] = (inI+2<0 || inJ  <0 || inI+2>27 || inJ  >27) ? 0 : data[(inI+2)*28 + inJ   ];
    assign DATA[23] = (inI+2<0 || inJ+1<0 || inI+2>27 || inJ+1>27) ? 0 : data[(inI+2)*28 + inJ+1 ];
    assign DATA[24] = (inI+2<0 || inJ+2<0 || inI+2>27 || inJ+2>27) ? 0 : data[(inI+2)*28 + inJ+2 ];
always @* begin
    
    dPIn = {
DATA[0] ,DATA[1] ,DATA[2] ,DATA[3] ,DATA[4] ,
DATA[5] ,DATA[6] ,DATA[7] ,DATA[8] ,DATA[9] ,
DATA[10],DATA[11],DATA[12],DATA[13],DATA[14],
DATA[15],DATA[16],DATA[17],DATA[18],DATA[19],
DATA[20],DATA[21],DATA[22],DATA[23],DATA[24]
};
end
endmodule

