module FFT (clk, rst, s2p_valid, 
    x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, 
    x10, x11, x12, x13, x14, x15, fft_valid,
	fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7,
	fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15);
	
`include "FFT_coefficient.dat"

input clk, rst;
input s2p_valid;
input signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
output reg fft_valid;
output reg [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
output reg [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;



//==================================================================================================
// Stage 1
//==================================================================================================
wire signed [15:0] mul_S1_R0,mul_S1_R1,mul_S1_R2,mul_S1_R3,mul_S1_R4,mul_S1_R5,mul_S1_R6,mul_S1_R7;
assign mul_S1_R0 = x0 + x8;
assign mul_S1_R1 = x1 + x9;
assign mul_S1_R2 = x2 + x10;
assign mul_S1_R3 = x3 + x11;
assign mul_S1_R4 = x4 + x12;
assign mul_S1_R5 = x5 + x13;
assign mul_S1_R6 = x6 + x14;
assign mul_S1_R7 = x7 + x15;

wire signed [47:0] mul_S1_R8,mul_S1_R9,mul_S1_R10,mul_S1_R11,mul_S1_R12,mul_S1_R13,mul_S1_R14,mul_S1_R15;
assign mul_S1_R8 = ((x0 - x8)*FFT_R0);
assign mul_S1_R9 = ((x1 - x9)*FFT_R1);
assign mul_S1_R10 = ((x2 - x10)*FFT_R2);
assign mul_S1_R11 = ((x3 - x11)*FFT_R3);
assign mul_S1_R12 = ((x4 - x12)*FFT_R4);
assign mul_S1_R13 = ((x5 - x13)*FFT_R5);
assign mul_S1_R14 = ((x6 - x14)*FFT_R6);
assign mul_S1_R15 = ((x7 - x15)*FFT_R7);

wire signed [47:0] mul_S1_I8,mul_S1_I9,mul_S1_I10,mul_S1_I11,mul_S1_I12,mul_S1_I13,mul_S1_I14,mul_S1_I15;
assign mul_S1_I8 = ((x0 - x8)*FFT_I0);
assign mul_S1_I9 = ((x1 - x9)*FFT_I1);
assign mul_S1_I10 = ((x2 - x10)*FFT_I2);
assign mul_S1_I11 = ((x3 - x11)*FFT_I3);
assign mul_S1_I12 = ((x4 - x12)*FFT_I4);
assign mul_S1_I13 = ((x5 - x13)*FFT_I5);
assign mul_S1_I14 = ((x6 - x14)*FFT_I6);
assign mul_S1_I15 = ((x7 - x15)*FFT_I7);

//==================================================================================================
// Stage 2
//==================================================================================================
wire signed [15:0] mul_S2_R0,mul_S2_R1,mul_S2_R2,mul_S2_R3;
wire signed [31:0] mul_S2_R8,mul_S2_R9,mul_S2_R10,mul_S2_R11;
assign mul_S2_R0 = mul_S1_R0 + mul_S1_R4;
assign mul_S2_R1 = mul_S1_R1 + mul_S1_R5;
assign mul_S2_R2 = mul_S1_R2 + mul_S1_R6;
assign mul_S2_R3 = mul_S1_R3 + mul_S1_R7;
assign mul_S2_R8 = mul_S1_R8[39:8] + mul_S1_R12[39:8];
assign mul_S2_R9 = mul_S1_R9[39:8] + mul_S1_R13[39:8];
assign mul_S2_R10 = mul_S1_R10[39:8] + mul_S1_R14[39:8];
assign mul_S2_R11 = mul_S1_R11[39:8] + mul_S1_R15[39:8];

wire signed [31:0] mul_S2_I8,mul_S2_I9,mul_S2_I10,mul_S2_I11;
assign mul_S2_I8 = mul_S1_I8[39:8] + mul_S1_I12[39:8];
assign mul_S2_I9 = mul_S1_I9[39:8] + mul_S1_I13[39:8];
assign mul_S2_I10 = mul_S1_I10[39:8] + mul_S1_I14[39:8];
assign mul_S2_I11 = mul_S1_I11[39:8] + mul_S1_I15[39:8];

wire signed [47:0] mul_S2_R4,mul_S2_R5,mul_S2_R6,mul_S2_R7;
wire signed [47:0] mul_S2_I4,mul_S2_I5,mul_S2_I6,mul_S2_I7;
assign mul_S2_R4 = (mul_S1_R0 - mul_S1_R4)*FFT_R0;
assign mul_S2_R5 = (mul_S1_R1 - mul_S1_R5)*FFT_R2;
assign mul_S2_R6 = (mul_S1_R2 - mul_S1_R6)*FFT_R4;
assign mul_S2_R7 = (mul_S1_R3 - mul_S1_R7)*FFT_R6;
assign mul_S2_I4 = (mul_S1_R0 - mul_S1_R4)*FFT_I0;
assign mul_S2_I5 = (mul_S1_R1 - mul_S1_R5)*FFT_I2;
assign mul_S2_I6 = (mul_S1_R2 - mul_S1_R6)*FFT_I4;
assign mul_S2_I7 = (mul_S1_R3 - mul_S1_R7)*FFT_I6;

wire signed [63:0] mul_S2_R12,mul_S2_R13,mul_S2_R14,mul_S2_R15;
wire signed [63:0] mul_S2_I12,mul_S2_I13,mul_S2_I14,mul_S2_I15;
assign mul_S2_R12 = ($signed(mul_S1_R8[39:8]) - $signed(mul_S1_R12[39:8]))*FFT_R0 + ($signed(mul_S1_I12[39:8]) - $signed(mul_S1_I8[39:8]))*FFT_I0;
assign mul_S2_R13 = ($signed(mul_S1_R9[39:8]) - $signed(mul_S1_R13[39:8]))*FFT_R2 + ($signed(mul_S1_I13[39:8]) - $signed(mul_S1_I9[39:8]))*FFT_I2;
assign mul_S2_R14 = ($signed(mul_S1_R10[39:8]) - $signed(mul_S1_R14[39:8]))*FFT_R4 + ($signed(mul_S1_I14[39:8]) - $signed(mul_S1_I10[39:8]))*FFT_I4;
assign mul_S2_R15 = ($signed(mul_S1_R11[39:8]) - $signed(mul_S1_R15[39:8]))*FFT_R6 + ($signed(mul_S1_I15[39:8]) - $signed(mul_S1_I11[39:8]))*FFT_I6;
assign mul_S2_I12 = ($signed(mul_S1_R8[39:8]) - $signed(mul_S1_R12[39:8]))*FFT_I0 + ($signed(mul_S1_I8[39:8]) - $signed(mul_S1_I12[39:8]))*FFT_R0;
assign mul_S2_I13 = ($signed(mul_S1_R9[39:8]) - $signed(mul_S1_R13[39:8]))*FFT_I2 + ($signed(mul_S1_I9[39:8]) - $signed(mul_S1_I13[39:8]))*FFT_R2;
assign mul_S2_I14 = ($signed(mul_S1_R10[39:8]) - $signed(mul_S1_R14[39:8]))*FFT_I4 + ($signed(mul_S1_I10[39:8]) - $signed(mul_S1_I14[39:8]))*FFT_R4;
assign mul_S2_I15 = ($signed(mul_S1_R11[39:8]) - $signed(mul_S1_R15[39:8]))*FFT_I6 + ($signed(mul_S1_I11[39:8]) - $signed(mul_S1_I15[39:8]))*FFT_R6;

//==================================================================================================
// Stage 3
//==================================================================================================
wire signed [15:0] mul_S3_R0,mul_S3_R1;
wire signed [31:0] mul_S3_R4,mul_S3_R5,mul_S3_R8,mul_S3_R9,mul_S3_R12,mul_S3_R13;
assign mul_S3_R0 = mul_S2_R0 + mul_S2_R2;
assign mul_S3_R1 = mul_S2_R1 + mul_S2_R3;
assign mul_S3_R4 = mul_S2_R4[39:8] + mul_S2_R6[39:8];
assign mul_S3_R5 = mul_S2_R5[39:8] + mul_S2_R7[39:8];
assign mul_S3_R8 = mul_S2_R8 + mul_S2_R10;
assign mul_S3_R9 = mul_S2_R9 + mul_S2_R11;
assign mul_S3_R12 = mul_S2_R12[47:16] + mul_S2_R14[47:16];
assign mul_S3_R13 = mul_S2_R13[47:16] + mul_S2_R15[47:16];

wire signed [31:0] mul_S3_I4,mul_S3_I5,mul_S3_I8,mul_S3_I9,mul_S3_I12,mul_S3_I13;
assign mul_S3_I4 = mul_S2_I4[39:8] + mul_S2_I6[39:8];
assign mul_S3_I5 = mul_S2_I5[39:8] + mul_S2_I7[39:8];
assign mul_S3_I8 = mul_S2_I8 + mul_S2_I10;
assign mul_S3_I9 = mul_S2_I9 + mul_S2_I11;
assign mul_S3_I12 = mul_S2_I12[47:16] + mul_S2_I14[47:16];
assign mul_S3_I13 = mul_S2_I13[47:16] + mul_S2_I15[47:16];

wire signed [47:0] mul_S3_R2,mul_S3_R3;
wire signed [47:0] mul_S3_I2,mul_S3_I3;
assign mul_S3_R2 = (mul_S2_R0 - mul_S2_R2)*FFT_R0;
assign mul_S3_R3 = (mul_S2_R1 - mul_S2_R3)*FFT_R4;
assign mul_S3_I2 = (mul_S2_R0 - mul_S2_R2)*FFT_I0;
assign mul_S3_I3 = (mul_S2_R1 - mul_S2_R3)*FFT_I4;

wire signed [63:0] mul_S3_R6,mul_S3_R7,mul_S3_R10,mul_S3_R11,mul_S3_R14,mul_S3_R15;
wire signed [63:0] mul_S3_I6,mul_S3_I7,mul_S3_I10,mul_S3_I11,mul_S3_I14,mul_S3_I15;
assign mul_S3_R6 = ($signed(mul_S2_R4[39:8]) - $signed(mul_S2_R6[39:8]))*FFT_R0 + ($signed(mul_S2_I6[39:8]) - $signed(mul_S2_I4[39:8]))*FFT_I0;
assign mul_S3_R7 = ($signed(mul_S2_R5[39:8]) - $signed(mul_S2_R7[39:8]))*FFT_R4 + ($signed(mul_S2_I7[39:8]) - $signed(mul_S2_I5[39:8]))*FFT_I4;
assign mul_S3_R10 = (mul_S2_R8 - mul_S2_R10)*FFT_R0 + (mul_S2_I10 - mul_S2_I8)*FFT_I0;
assign mul_S3_R11 = (mul_S2_R9 - mul_S2_R11)*FFT_R4 + (mul_S2_I11 - mul_S2_I9)*FFT_I4;
assign mul_S3_R14 = ($signed(mul_S2_R12[47:16]) - $signed(mul_S2_R14[47:16]))*FFT_R0 + ($signed(mul_S2_I14[47:16]) - $signed(mul_S2_I12[47:16]))*FFT_I0;
assign mul_S3_R15 = ($signed(mul_S2_R13[47:16]) - $signed(mul_S2_R15[47:16]))*FFT_R4 + ($signed(mul_S2_I15[47:16]) - $signed(mul_S2_I13[47:16]))*FFT_I4;
assign mul_S3_I6 = ($signed(mul_S2_R4[39:8]) - $signed(mul_S2_R6[39:8]))*FFT_I0 + ($signed(mul_S2_I4[39:8]) - $signed(mul_S2_I6[39:8]))*FFT_R0;
assign mul_S3_I7 = ($signed(mul_S2_R5[39:8]) - $signed(mul_S2_R7[39:8]))*FFT_I4 + ($signed(mul_S2_I5[39:8]) - $signed(mul_S2_I7[39:8]))*FFT_R4;
assign mul_S3_I10 = (mul_S2_R8 - mul_S2_R10)*FFT_I0 + (mul_S2_I8 - mul_S2_I10)*FFT_R0;
assign mul_S3_I11 = (mul_S2_R9 - mul_S2_R11)*FFT_I4 + (mul_S2_I9 - mul_S2_I11)*FFT_R4;
assign mul_S3_I14 = ($signed(mul_S2_R12[47:16]) - $signed(mul_S2_R14[47:16]))*FFT_I0 + ($signed(mul_S2_I12[47:16]) - $signed(mul_S2_I14[47:16]))*FFT_R0;
assign mul_S3_I15 = ($signed(mul_S2_R13[47:16]) - $signed(mul_S2_R15[47:16]))*FFT_I4 + ($signed(mul_S2_I13[47:16]) - $signed(mul_S2_I15[47:16]))*FFT_R4;

//==================================================================================================
// Stage 4
//==================================================================================================
wire signed [15:0] mul_S4_R0;
wire signed [31:0] mul_S4_R2,mul_S4_R4,mul_S4_R6,mul_S4_R8,mul_S4_R10,mul_S4_R12,mul_S4_R14;
assign mul_S4_R0 = mul_S3_R0 + mul_S3_R1;
assign mul_S4_R2 = mul_S3_R2[39:8] + mul_S3_R3[39:8];
assign mul_S4_R4 = mul_S3_R4 + mul_S3_R5;
assign mul_S4_R6 = mul_S3_R6[47:16] + mul_S3_R7[47:16];
assign mul_S4_R8 = mul_S3_R8 + mul_S3_R9;
assign mul_S4_R10 = mul_S3_R10[47:16] + mul_S3_R11[47:16];
assign mul_S4_R12 = mul_S3_R12 + mul_S3_R13;
assign mul_S4_R14 = mul_S3_R14[47:16] + mul_S3_R15[47:16];

wire signed [31:0] mul_S4_I2,mul_S4_I4,mul_S4_I6,mul_S4_I8,mul_S4_I10,mul_S4_I12,mul_S4_I14;
assign mul_S4_I2 = mul_S3_I2[39:8] + mul_S3_I3[39:8];
assign mul_S4_I4 = mul_S3_I4 + mul_S3_I5;
assign mul_S4_I6 = mul_S3_I6[47:16] + mul_S3_I7[47:16];
assign mul_S4_I8 = mul_S3_I8 + mul_S3_I9;
assign mul_S4_I10 = mul_S3_I10[47:16] + mul_S3_I11[47:16];
assign mul_S4_I12 = mul_S3_I12 + mul_S3_I13;
assign mul_S4_I14 = mul_S3_I14[47:16] + mul_S3_I15[47:16];

wire signed [47:0] mul_S4_R1;
wire signed [47:0] mul_S4_I1;
assign mul_S4_R1 = (mul_S3_R0 - mul_S3_R1)*FFT_R0;
assign mul_S4_I1 = (mul_S3_R0 - mul_S3_R1)*FFT_I0;

wire signed [63:0] mul_S4_R3,mul_S4_R5,mul_S4_R7,mul_S4_R9,mul_S4_R11,mul_S4_R13,mul_S4_R15;
wire signed [63:0] mul_S4_I3,mul_S4_I5,mul_S4_I7,mul_S4_I9,mul_S4_I11,mul_S4_I13,mul_S4_I15;
assign mul_S4_R3 = ($signed(mul_S3_R2[39:8]) - $signed(mul_S3_R3[39:8]))*FFT_R0 + ($signed(mul_S3_I3[39:8]) - $signed(mul_S3_I2[39:8]))*FFT_I0;
assign mul_S4_R5 = (mul_S3_R4 - mul_S3_R5)*FFT_R0 + (mul_S3_I5 - mul_S3_I4)*FFT_I0;
assign mul_S4_R7 = ($signed(mul_S3_R6[47:16]) - $signed(mul_S3_R7[47:16]))*FFT_R0 + ($signed(mul_S3_I7[47:16]) - $signed(mul_S3_I6[47:16]))*FFT_I0;
assign mul_S4_R9 = (mul_S3_R8 - mul_S3_R9)*FFT_R0 + (mul_S3_I9 - mul_S3_I8)*FFT_I0;
assign mul_S4_R11 = ($signed(mul_S3_R10[47:16]) - $signed(mul_S3_R11[47:16]))*FFT_R0 + ($signed(mul_S3_I11[47:16]) - $signed(mul_S3_I10[47:16]))*FFT_I0;
assign mul_S4_R13 = (mul_S3_R12 - mul_S3_R13)*FFT_R0 + (mul_S3_I13 - mul_S3_I12)*FFT_I0;
assign mul_S4_R15 = ($signed(mul_S3_R14[47:16]) - $signed(mul_S3_R15[47:16]))*FFT_R0 + ($signed(mul_S3_I15[47:16]) - $signed(mul_S3_I14[47:16]))*FFT_I0;
assign mul_S4_I3 = ($signed(mul_S3_R2[39:8]) - $signed(mul_S3_R3[39:8]))*FFT_I0 + ($signed(mul_S3_I2[39:8]) - $signed(mul_S3_I3[39:8]))*FFT_R0;
assign mul_S4_I5 = (mul_S3_R4 - mul_S3_R5)*FFT_I0 + (mul_S3_I4 - mul_S3_I5)*FFT_R0;
assign mul_S4_I7 = ($signed(mul_S3_R6[47:16]) - $signed(mul_S3_R7[47:16]))*FFT_I0 + ($signed(mul_S3_I6[47:16]) - $signed(mul_S3_I7[47:16]))*FFT_R0;
assign mul_S4_I9 = (mul_S3_R8 - mul_S3_R9)*FFT_I0 + (mul_S3_I8 - mul_S3_I9)*FFT_R0;
assign mul_S4_I11 = ($signed(mul_S3_R10[47:16]) - $signed(mul_S3_R11[47:16]))*FFT_I0 + ($signed(mul_S3_I10[47:16]) - $signed(mul_S3_I11[47:16]))*FFT_R0;
assign mul_S4_I13 = (mul_S3_R12 - mul_S3_R13)*FFT_I0 + (mul_S3_I12 - mul_S3_I13)*FFT_R0;
assign mul_S4_I15 = ($signed(mul_S3_R14[47:16]) - $signed(mul_S3_R15[47:16]))*FFT_I0 + ($signed(mul_S3_I14[47:16]) - $signed(mul_S3_I15[47:16]))*FFT_R0;


always@(posedge clk or posedge rst)
begin
	
	if(rst)
	begin
		fft_valid <= 0;
		fft_d0 <= 32'd0;
		fft_d1 <= 32'd0;
		fft_d2 <= 32'd0;
		fft_d3 <= 32'd0;
		fft_d4 <= 32'd0;
		fft_d5 <= 32'd0;
		fft_d6 <= 32'd0;
		fft_d7 <= 32'd0;
		fft_d8 <= 32'd0;
		fft_d9 <= 32'd0;
		fft_d10 <= 32'd0;
		fft_d11 <= 32'd0;
		fft_d12 <= 32'd0;
		fft_d13 <= 32'd0;
		fft_d14 <= 32'd0;
		fft_d15 <= 32'd0;
	end
	else if (s2p_valid)
	begin
		fft_valid <= 1;
		fft_d0 <= {mul_S4_R0,16'd0};
		fft_d1 <= {mul_S4_R8[23:8],mul_S4_I8[23:8]};
		fft_d2 <= {mul_S4_R4[23:8],mul_S4_I4[23:8]};
		fft_d3 <= {mul_S4_R12[23:8],mul_S4_I12[23:8]};
		fft_d4 <= {mul_S4_R2[23:8],mul_S4_I2[23:8]};
		fft_d5 <= {mul_S4_R10[23:8],mul_S4_I10[23:8]};
		fft_d6 <= {mul_S4_R6[23:8],mul_S4_I6[23:8]};
		fft_d7 <= {mul_S4_R14[23:8],mul_S4_I14[23:8]};
		fft_d8 <= {mul_S4_R1[31:16],mul_S4_I1[31:16]};
		fft_d9 <= {mul_S4_R9[39:24],mul_S4_I9[39:24]};
		fft_d10 <= {mul_S4_R5[39:24],mul_S4_I5[39:24]};
		fft_d11 <= {mul_S4_R13[39:24],mul_S4_I13[39:24]};
		fft_d12 <= {mul_S4_R3[39:24],mul_S4_I3[39:24]};
		fft_d13 <= {mul_S4_R11[39:24],mul_S4_I11[39:24]};
		fft_d14 <= {mul_S4_R7[39:24],mul_S4_I7[39:24]};
		fft_d15 <= {mul_S4_R15[39:24],mul_S4_I15[39:24]};
	end
	else
	begin
		fft_valid <= 0;
		fft_d0 <= fft_d0;
		fft_d1 <= fft_d1;
		fft_d2 <= fft_d2;
		fft_d3 <= fft_d3;
		fft_d4 <= fft_d4;
		fft_d5 <= fft_d5;
		fft_d6 <= fft_d6;
		fft_d7 <= fft_d7;
		fft_d8 <= fft_d8;
		fft_d9 <= fft_d9;
		fft_d10 <= fft_d10;
		fft_d11 <= fft_d11;
		fft_d12 <= fft_d12;
		fft_d13 <= fft_d13;
		fft_d14 <= fft_d14;
		fft_d15 <= fft_d15;
	end

end


endmodule