module FIR(
    input clk,
    input rst,
    input data_valid,
    input signed [15:0] data,
    output reg fir_valid,
    output signed [15:0] fir_d
    );
    `include "FIR_coefficient.dat"
    
    reg signed [15:0] D[30:0];//31顆D flip-flop
    reg signed [35:0] mul [31:0];//乘法結果
    reg signed[35:0] sum = 0;
    integer k;
    integer counter = 0;
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            fir_valid <= 0;
            counter <= 0;
            for(k = 0; k < 31; k = k+1) 
            begin
                D[k] <= 0;
            end
            for(k = 0; k < 32; k = k+1)
            begin
                mul[k] <= 0;
            end
        end
        else
        begin
            if(data_valid)
            begin
                D[0] <= data;
                for(k = 1; k < 31; k = k+1)
                begin
                    D[k] <= D[k-1];
                end             
                counter <= counter + 1;
                if(counter >= 32)
                begin 
                    fir_valid <= 1'b1;
                end
            end
        end
    end
    
    always@(posedge clk)
    begin
        if(data_valid)
        begin
            mul[0] <= data*FIR_C00;
            mul[1] <= D[0]*FIR_C01;
            mul[2] <= D[1]*FIR_C02;
            mul[3] <= D[2]*FIR_C03;
            mul[4] <= D[3]*FIR_C04;
            mul[5] <= D[4]*FIR_C05;
            mul[6] <= D[5]*FIR_C06;
            mul[7] <= D[6]*FIR_C07;
            mul[8] <= D[7]*FIR_C08;
            mul[9] <= D[8]*FIR_C09;
            mul[10] <= D[9]*FIR_C10;
            mul[11] <= D[10]*FIR_C11;
            mul[12] <= D[11]*FIR_C12;
            mul[13] <= D[12]*FIR_C13;
            mul[14] <= D[13]*FIR_C14;
            mul[15] <= D[14]*FIR_C15;
            mul[16] <= D[15]*FIR_C16;
            mul[17] <= D[16]*FIR_C17;
            mul[18] <= D[17]*FIR_C18;
            mul[19] <= D[18]*FIR_C19;
            mul[20] <= D[19]*FIR_C20;
            mul[21] <= D[20]*FIR_C21;
            mul[22] <= D[21]*FIR_C22;
            mul[23] <= D[22]*FIR_C23;
            mul[24] <= D[23]*FIR_C24;
            mul[25] <= D[24]*FIR_C25;
            mul[26] <= D[25]*FIR_C26;
            mul[27] <= D[26]*FIR_C27;
            mul[28] <= D[27]*FIR_C28;
            mul[29] <= D[28]*FIR_C29;
            mul[30] <= D[29]*FIR_C30;
            mul[31] <= D[30]*FIR_C31;
            sum = mul[0]+mul[1]+mul[2]+mul[3]+mul[4]+mul[5]+mul[6]+mul[7]+mul[8]+
                   mul[9]+mul[10]+mul[11]+mul[12]+mul[13]+mul[14]+mul[15]+mul[16]+mul[17]+
                   mul[18]+mul[19]+mul[20]+mul[21]+mul[22]+mul[23]+mul[24]+mul[25]+mul[26]+
                   mul[27]+mul[28]+mul[29]+mul[30]+mul[31];
        end
    end

    assign fir_d = sum[31:16];
        
endmodule