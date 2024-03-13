//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Wed Apr 20 14:41:39 2022
//Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [3:0]btn_1;
  wire [1:0]sw_1;
  wire sysclk_1;
  wire [7:0]top_0_ar;
  wire [3:0]top_0_led;
  wire top_0_led4_b;
  wire top_0_led4_g;
  wire top_0_led4_r;
  wire top_0_led5_b;
  wire top_0_led5_g;
  wire top_0_led5_r;

  assign ar[7:0] = top_0_ar;
  assign btn_1 = btn[3:0];
  assign led[3:0] = top_0_led;
  assign led4_b = top_0_led4_b;
  assign led4_g = top_0_led4_g;
  assign led4_r = top_0_led4_r;
  assign led5_b = top_0_led5_b;
  assign led5_g = top_0_led5_g;
  assign led5_r = top_0_led5_r;
  assign sw_1 = sw[1:0];
  assign sysclk_1 = sysclk;
  design_1_top_0_0 top_0
       (.ar(top_0_ar),
        .btn(btn_1),
        .led(top_0_led),
        .led4_b(top_0_led4_b),
        .led4_g(top_0_led4_g),
        .led4_r(top_0_led4_r),
        .led5_b(top_0_led5_b),
        .led5_g(top_0_led5_g),
        .led5_r(top_0_led5_r),
        .sw(sw_1),
        .sysclk(sysclk_1));
endmodule
