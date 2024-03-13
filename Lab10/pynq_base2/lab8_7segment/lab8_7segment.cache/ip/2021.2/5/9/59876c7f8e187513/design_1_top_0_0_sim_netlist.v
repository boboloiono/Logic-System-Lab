// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Apr 20 23:16:33 2022
// Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
   (I3,
    btn,
    sysclk,
    sw);
  output I3;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire I3;
  wire [0:0]btn;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(I3));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0E0A)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(btn),
        .I3(current_state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[2]),
        .Q(current_state[2]));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0
   (I2,
    btn,
    sysclk,
    sw);
  output I2;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__0_n_0 ;
  wire I2;
  wire [0:0]btn;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(I2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0E0A)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(btn),
        .I3(current_state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(\FSM_sequential_current_state[1]_i_1__0_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[2]),
        .Q(current_state[2]));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1
   (I1,
    btn,
    sysclk,
    sw);
  output I1;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__1_n_0 ;
  wire I1;
  wire [0:0]btn;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(I1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__1 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0E0A)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(btn),
        .I3(current_state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(\FSM_sequential_current_state[1]_i_1__1_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[2]),
        .Q(current_state[2]));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2
   (out0,
    btn,
    sysclk,
    sw);
  output out0;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__2_n_0 ;
  wire [0:0]btn;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire out0;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(out0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__2 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0E0A)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(btn),
        .I3(current_state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(\FSM_sequential_current_state[1]_i_1__2_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:000" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(sw),
        .D(next_state[2]),
        .Q(current_state[2]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sysclk,
    sw,
    btn,
    led,
    led4_b,
    led4_g,
    led4_r,
    led5_b,
    led5_g,
    led5_r,
    ar);
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

  wire \<const0> ;
  wire [6:0]\^ar ;
  wire [3:0]btn;
  wire [3:0]led;
  wire [1:0]sw;
  wire sysclk;

  assign ar[7] = \<const0> ;
  assign ar[6:0] = \^ar [6:0];
  assign led4_b = \<const0> ;
  assign led4_g = \<const0> ;
  assign led4_r = \<const0> ;
  assign led5_b = \<const0> ;
  assign led5_g = \<const0> ;
  assign led5_r = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.ar(\^ar ),
        .btn(btn),
        .led(led),
        .sw(sw[0]),
        .sysclk(sysclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7
   (ar,
    sel0);
  output [6:0]ar;
  input [3:0]sel0;

  wire [6:0]ar;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \ar[0]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(ar[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \ar[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(ar[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \ar[2]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(ar[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \ar[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(ar[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \ar[4]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(ar[4]));
  LUT4 #(
    .INIT(16'h5190)) 
    \ar[5]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(ar[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \ar[6]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(ar[6]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (led,
    ar,
    btn,
    sysclk,
    sw);
  output [3:0]led;
  output [6:0]ar;
  input [3:0]btn;
  input sysclk;
  input [0:0]sw;

  wire [6:0]ar;
  wire [3:0]btn;
  wire btn_out_0;
  wire btn_out_1;
  wire btn_out_2;
  wire btn_out_3;
  wire [3:0]led;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire p_1_in;
  wire [3:0]sel0;
  wire \sel[0]_i_1_n_0 ;
  wire \sel[1]_i_1_n_0 ;
  wire \sel[2]_i_1_n_0 ;
  wire \sel[3]_i_1_n_0 ;
  wire [0:0]sw;
  wire sysclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce debounce_1
       (.I3(btn_out_3),
        .btn(btn[3]),
        .sw(sw),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 debounce_2
       (.I2(btn_out_2),
        .btn(btn[2]),
        .sw(sw),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1 debounce_3
       (.I1(btn_out_1),
        .btn(btn[1]),
        .sw(sw),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2 debounce_4
       (.btn(btn[0]),
        .out0(btn_out_0),
        .sw(sw),
        .sysclk(sysclk));
  LUT1 #(
    .INIT(2'h1)) 
    \led[0]_i_1 
       (.I0(led[0]),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \led[1]_i_1 
       (.I0(led[1]),
        .O(\led[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led[2]_i_1 
       (.I0(led[2]),
        .O(\led[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led[3]_i_1 
       (.I0(led[3]),
        .O(\led[3]_i_1_n_0 ));
  FDCE \led_reg[0] 
       (.C(btn_out_0),
        .CE(1'b1),
        .CLR(sw),
        .D(p_1_in),
        .Q(led[0]));
  FDCE \led_reg[1] 
       (.C(btn_out_1),
        .CE(1'b1),
        .CLR(sw),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]));
  FDCE \led_reg[2] 
       (.C(btn_out_2),
        .CE(1'b1),
        .CLR(sw),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]));
  FDCE \led_reg[3] 
       (.C(btn_out_3),
        .CE(1'b1),
        .CLR(sw),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7 seg7_
       (.ar(ar),
        .sel0(sel0));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[0]_i_1 
       (.I0(sel0[0]),
        .O(\sel[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[1]_i_1 
       (.I0(sel0[1]),
        .O(\sel[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[2]_i_1 
       (.I0(sel0[2]),
        .O(\sel[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[3]_i_1 
       (.I0(sel0[3]),
        .O(\sel[3]_i_1_n_0 ));
  FDCE \sel_reg[0] 
       (.C(btn_out_0),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \sel_reg[1] 
       (.C(btn_out_1),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE \sel_reg[2] 
       (.C(btn_out_2),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE \sel_reg[3] 
       (.C(btn_out_3),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[3]_i_1_n_0 ),
        .Q(sel0[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
