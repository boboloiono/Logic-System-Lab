// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Apr 20 19:23:21 2022
// Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/KevinWu/Desktop/pynq_project/pynq_base1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2021.2" *)
module design_1_top_0_0(sysclk, sw, btn, led, led4_b, led4_g, led4_r, led5_b, 
  led5_g, led5_r, ar)
/* synthesis syn_black_box black_box_pad_pin="sysclk,sw[1:0],btn[3:0],led[3:0],led4_b,led4_g,led4_r,led5_b,led5_g,led5_r,ar[7:0]" */;
  input sysclk;
  input [1:0]sw;
  input [3:0]btn;
  output [3:0]led;
  output led4_b;
  output led4_g;
  output led4_r;
  output led5_b;
  output led5_g;
  output led5_r;
  output [7:0]ar;
endmodule
