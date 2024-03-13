module Analysis(clk, rst, fft_valid, fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, done, freq);
input clk, rst, fft_valid;
input signed [31:0] fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15;
output reg done;
output [3:0] freq;
integer k;
reg [3:0] n;
reg signed [31:0] a[15:0];
reg signed [31:0] max_level1_1,max_level1_2,max_level1_3,max_level1_4,max_level1_5,max_level1_6,max_level1_7,max_level1_8;
reg signed [31:0] max_level2_1,max_level2_2,max_level2_3,max_level2_4,max_level3_1,max_level3_2,max;


always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        done  <= 0;
        max <= 0;
        n <= 0;
        for(k = 0; k < 32; k = k+1) 
        begin
            a[k] <= 0;
        end
        max_level1_1 <= 0;max_level1_2 <= 0;max_level1_3 <= 0;max_level1_4 <= 0;
        max_level1_5 <= 0;max_level1_6 <= 0;max_level1_7 <= 0;max_level1_8 <= 0;
        max_level2_1 <= 0;max_level2_2 <= 0;max_level2_3 <= 0;max_level2_4 <= 0;
        max_level3_1 <= 0;max_level3_2 <= 0;max <= 0;
    end
    else if (fft_valid)
    begin  
        a[0] <= $signed(fft_d0[31:16])*$signed(fft_d0[31:16]) + $signed(fft_d0[15:0])*$signed(fft_d0[15:0]);
        a[1] = $signed(fft_d1[31:16])*$signed(fft_d1[31:16]) + $signed(fft_d1[15:0])*$signed(fft_d1[15:0]);
        a[2] = $signed(fft_d2[31:16])*$signed(fft_d2[31:16]) + $signed(fft_d2[15:0])*$signed(fft_d2[15:0]);
        a[3] = $signed(fft_d3[31:16])*$signed(fft_d3[31:16]) + $signed(fft_d3[15:0])*$signed(fft_d3[15:0]);
        a[4] = $signed(fft_d4[31:16])*$signed(fft_d4[31:16]) + $signed(fft_d4[15:0])*$signed(fft_d4[15:0]);
        a[5] = $signed(fft_d5[31:16])*$signed(fft_d5[31:16]) + $signed(fft_d5[15:0])*$signed(fft_d5[15:0]);
        a[6] = $signed(fft_d6[31:16])*$signed(fft_d6[31:16]) + $signed(fft_d6[15:0])*$signed(fft_d6[15:0]);
        a[7] = $signed(fft_d7[31:16])*$signed(fft_d7[31:16]) + $signed(fft_d7[15:0])*$signed(fft_d7[15:0]);
        a[8] = $signed(fft_d8[31:16])*$signed(fft_d8[31:16]) + $signed(fft_d8[15:0])*$signed(fft_d8[15:0]);
        a[9] = $signed(fft_d9[31:16])*$signed(fft_d9[31:16]) + $signed(fft_d9[15:0])*$signed(fft_d9[15:0]);
        a[10] = $signed(fft_d10[31:16])*$signed(fft_d10[31:16]) + $signed(fft_d10[15:0])*$signed(fft_d10[15:0]);
        a[11] = $signed(fft_d11[31:16])*$signed(fft_d11[31:16]) + $signed(fft_d11[15:0])*$signed(fft_d11[15:0]);
        a[12] = $signed(fft_d12[31:16])*$signed(fft_d12[31:16]) + $signed(fft_d12[15:0])*$signed(fft_d12[15:0]);
        a[13] = $signed(fft_d13[31:16])*$signed(fft_d13[31:16]) + $signed(fft_d13[15:0])*$signed(fft_d13[15:0]);
        a[14] = $signed(fft_d14[31:16])*$signed(fft_d14[31:16]) + $signed(fft_d14[15:0])*$signed(fft_d14[15:0]);
        a[15] = $signed(fft_d15[31:16])*$signed(fft_d15[31:16]) + $signed(fft_d15[15:0])*$signed(fft_d15[15:0]);
        
        max_level1_1 = a[0]>a[1]?a[0]:a[1];
        max_level1_2 = a[2]>a[3]?a[2]:a[3];
        max_level1_3 = a[4]>a[5]?a[4]:a[5];
        max_level1_4 = a[6]>a[7]?a[6]:a[7];
        max_level1_5 = a[8]>a[9]?a[8]:a[9];
        max_level1_6 = a[10]>a[11]?a[10]:a[11];
        max_level1_7 = a[12]>a[13]?a[12]:a[13];
        max_level1_8 = a[14]>a[15]?a[14]:a[15];
        max_level2_1 = max_level1_1>max_level1_2?max_level1_1:max_level1_2;
        max_level2_2 = max_level1_3>max_level1_4?max_level1_3:max_level1_4;
        max_level2_3 = max_level1_5>max_level1_6?max_level1_5:max_level1_6;
        max_level2_4 = max_level1_7>max_level1_8?max_level1_7:max_level1_8;
        max_level3_1 = max_level2_1>max_level2_2?max_level2_1:max_level2_2;
        max_level3_2 = max_level2_3>max_level2_4?max_level2_3:max_level2_4;
        max = max_level3_1>max_level3_2?max_level3_1:max_level3_2;

        n = max===a[0]?4'b0000:(max===a[1]?4'b0001:(max===a[2])?4'b0010:(max===a[3])?4'b0011:(max===a[4])?4'b0100:(max===a[5])?4'b0101:(max===a[6])?4'b0110:(max===a[7])?4'b0111:(max===a[8])?4'b1000:(max===a[9])?4'b1001:(max===a[10])?4'b1010:(max===a[11])?4'b1011:(max===a[12])?4'b1100:(max===a[13])?4'b1101:(max===a[14])?4'b1110:(max===a[15])?4'b1111:0);
        done = 1;
    end
    else
    begin
        done  <= 0;
        max <= 0;
        n <= 0;
    end
end

assign freq = n;

endmodule