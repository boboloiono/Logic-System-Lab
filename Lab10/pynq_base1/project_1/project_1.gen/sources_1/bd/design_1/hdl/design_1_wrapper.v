//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Wed Apr 20 19:22:39 2022
//Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ar,
    btn,
    led,
    led4_b,
    led4_g,
    led4_r,
    led5_b,
    led5_g,
    led5_r,
    sw,
    sysclk);
  output [7:0]ar;
  input [3:0]btn;
  output [3:0]led;
  output led4_b;
  output led4_g;
  output led4_r;
  output led5_b;
  output led5_g;
  output led5_r;
  input [1:0]sw;
  input sysclk;

  wire [7:0]ar;
  wire [3:0]btn;
  wire [3:0]led;
  wire led4_b;
  wire led4_g;
  wire led4_r;
  wire led5_b;
  wire led5_g;
  wire led5_r;
  wire [1:0]sw;
  wire sysclk;

  design_1 design_1_i
       (.ar(ar),
        .btn(btn),
        .led(led),
        .led4_b(led4_b),
        .led4_g(led4_g),
        .led4_r(led4_r),
        .led5_b(led5_b),
        .led5_g(led5_g),
        .led5_r(led5_r),
        .sw(sw),
        .sysclk(sysclk));
endmodule
