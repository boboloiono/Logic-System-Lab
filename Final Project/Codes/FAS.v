module FAS(
    input clk,
    input rst,
    input data_valid,
    input [15:0] data,
    output fir_valid,
    output wire signed [15:0] fir_d,
    output fft_valid,
    output [31:0] fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15,
    output done,
    output wire [3:0] freq
    );
    
    wire s2p_valid;
    wire [15:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
    
    FIR fir(clk, rst, data_valid, data, fir_valid, fir_d);
    S2P s2p(clk, rst, fir_valid, fir_d, s2p_valid, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15);
    FFT fft(clk, rst, s2p_valid, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, fft_valid, fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15);
    Analysis analysis(clk, rst, fft_valid, fft_d0, fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8, fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, done, freq);
    
endmodule