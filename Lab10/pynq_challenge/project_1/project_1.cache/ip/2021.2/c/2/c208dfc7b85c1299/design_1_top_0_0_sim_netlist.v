// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Apr 23 15:03:28 2022
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
   (btn_out_3,
    btn,
    sysclk,
    sw);
  output btn_out_3;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire [0:0]btn;
  wire btn_out_3;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(btn_out_3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
   (btn_out_2,
    btn,
    sysclk,
    sw);
  output btn_out_2;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__0_n_0 ;
  wire [0:0]btn;
  wire btn_out_2;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(btn_out_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
   (btn_out_1,
    btn,
    sysclk,
    sw);
  output btn_out_1;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__1_n_0 ;
  wire [0:0]btn;
  wire btn_out_1;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(btn_out_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__1 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
   (btn_out_0,
    btn,
    sysclk,
    sw);
  output btn_out_0;
  input [0:0]btn;
  input sysclk;
  input [0:0]sw;

  wire \FSM_sequential_current_state[1]_i_1__2_n_0 ;
  wire [0:0]btn;
  wire btn_out_0;
  wire [2:0]current_state;
  wire [2:0]next_state;
  wire [0:0]sw;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \/i_ 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(btn_out_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(btn),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_current_state[1]_i_1__2 
       (.I0(btn),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_current_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  wire led5_b;
  wire led5_g;
  wire led5_r;
  wire [1:0]sw;
  wire sysclk;

  assign ar[7] = \<const0> ;
  assign ar[6:0] = \^ar [6:0];
  assign led4_b = \<const0> ;
  assign led4_g = \<const0> ;
  assign led4_r = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.ar(\^ar ),
        .btn(btn),
        .led(led),
        .led5_b(led5_b),
        .led5_g(led5_g),
        .led5_r(led5_r),
        .sw(sw),
        .sysclk(sysclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7
   (ar,
    Q,
    ar_1_sp_1,
    \ar[1]_0 ,
    \ar[1]_1 ,
    p_0_in);
  output [5:0]ar;
  input [1:0]Q;
  input ar_1_sp_1;
  input \ar[1]_0 ;
  input \ar[1]_1 ;
  input p_0_in;

  wire [1:0]Q;
  wire [5:0]ar;
  wire \ar[1]_0 ;
  wire \ar[1]_1 ;
  wire ar_1_sn_1;
  wire p_0_in;

  assign ar_1_sn_1 = ar_1_sp_1;
  LUT6 #(
    .INIT(64'h0000510054000000)) 
    \ar[1]_INST_0 
       (.I0(Q[1]),
        .I1(ar_1_sn_1),
        .I2(\ar[1]_0 ),
        .I3(\ar[1]_1 ),
        .I4(p_0_in),
        .I5(Q[0]),
        .O(ar[0]));
  LUT6 #(
    .INIT(64'h1702020000830140)) 
    \ar[2]_INST_0 
       (.I0(Q[0]),
        .I1(\ar[1]_0 ),
        .I2(ar_1_sn_1),
        .I3(\ar[1]_1 ),
        .I4(p_0_in),
        .I5(Q[1]),
        .O(ar[1]));
  LUT6 #(
    .INIT(64'h140110C004C0BC94)) 
    \ar[3]_INST_0 
       (.I0(Q[1]),
        .I1(ar_1_sn_1),
        .I2(\ar[1]_0 ),
        .I3(Q[0]),
        .I4(\ar[1]_1 ),
        .I5(p_0_in),
        .O(ar[2]));
  LUT6 #(
    .INIT(64'hAAFFFF00BE555540)) 
    \ar[4]_INST_0 
       (.I0(Q[1]),
        .I1(p_0_in),
        .I2(\ar[1]_1 ),
        .I3(ar_1_sn_1),
        .I4(\ar[1]_0 ),
        .I5(Q[0]),
        .O(ar[3]));
  LUT6 #(
    .INIT(64'hAEEFFFACAB959594)) 
    \ar[5]_INST_0 
       (.I0(Q[1]),
        .I1(p_0_in),
        .I2(\ar[1]_1 ),
        .I3(ar_1_sn_1),
        .I4(\ar[1]_0 ),
        .I5(Q[0]),
        .O(ar[4]));
  LUT6 #(
    .INIT(64'h551004FF00AAAABF)) 
    \ar[6]_INST_0 
       (.I0(Q[1]),
        .I1(ar_1_sn_1),
        .I2(\ar[1]_0 ),
        .I3(\ar[1]_1 ),
        .I4(p_0_in),
        .I5(Q[0]),
        .O(ar[5]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (ar,
    led5_b,
    led,
    led5_g,
    led5_r,
    btn,
    sysclk,
    sw);
  output [6:0]ar;
  output led5_b;
  output [3:0]led;
  output led5_g;
  output led5_r;
  input [3:0]btn;
  input sysclk;
  input [1:0]sw;

  wire [6:0]ar;
  wire [3:0]btn;
  wire btn_out_0;
  wire btn_out_1;
  wire btn_out_2;
  wire btn_out_3;
  wire [3:0]led;
  wire led5_b;
  wire led5_g;
  wire led5_r;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire [1:0]mode;
  wire p_0_in;
  wire p_1_in;
  wire [1:0]p_2_in;
  wire \sel[0]_i_1_n_0 ;
  wire \sel[1]_i_1_n_0 ;
  wire \sel[2]_i_1_n_0 ;
  wire \sel[3]_i_1_n_0 ;
  wire \sel_reg_n_0_[0] ;
  wire \sel_reg_n_0_[1] ;
  wire \sel_reg_n_0_[2] ;
  wire [1:0]sw;
  wire sysclk;

  LUT6 #(
    .INIT(64'h1702020014830940)) 
    \ar[0]_INST_0 
       (.I0(mode[0]),
        .I1(p_0_in),
        .I2(\sel_reg_n_0_[1] ),
        .I3(\sel_reg_n_0_[0] ),
        .I4(\sel_reg_n_0_[2] ),
        .I5(mode[1]),
        .O(ar[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce debounce_1
       (.btn(btn[3]),
        .btn_out_3(btn_out_3),
        .sw(sw[0]),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 debounce_2
       (.btn(btn[2]),
        .btn_out_2(btn_out_2),
        .sw(sw[0]),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_1 debounce_3
       (.btn(btn[1]),
        .btn_out_1(btn_out_1),
        .sw(sw[0]),
        .sysclk(sysclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_2 debounce_4
       (.btn(btn[0]),
        .btn_out_0(btn_out_0),
        .sw(sw[0]),
        .sysclk(sysclk));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    led5_b_INST_0
       (.I0(mode[0]),
        .I1(mode[1]),
        .O(led5_b));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    led5_g_INST_0
       (.I0(mode[1]),
        .I1(mode[0]),
        .O(led5_g));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    led5_r_INST_0
       (.I0(mode[0]),
        .I1(mode[1]),
        .O(led5_r));
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
        .CLR(sw[0]),
        .D(p_1_in),
        .Q(led[0]));
  FDCE \led_reg[1] 
       (.C(btn_out_1),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]));
  FDCE \led_reg[2] 
       (.C(btn_out_2),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]));
  FDCE \led_reg[3] 
       (.C(btn_out_3),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \mode[0]_i_1 
       (.I0(mode[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mode[1]_i_1 
       (.I0(mode[0]),
        .I1(mode[1]),
        .O(p_2_in[1]));
  FDCE \mode_reg[0] 
       (.C(sw[1]),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(p_2_in[0]),
        .Q(mode[0]));
  FDCE \mode_reg[1] 
       (.C(sw[1]),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(p_2_in[1]),
        .Q(mode[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7 seg7_
       (.Q(mode),
        .ar(ar[6:1]),
        .\ar[1]_0 (\sel_reg_n_0_[0] ),
        .\ar[1]_1 (\sel_reg_n_0_[1] ),
        .ar_1_sp_1(\sel_reg_n_0_[2] ),
        .p_0_in(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[0]_i_1 
       (.I0(\sel_reg_n_0_[0] ),
        .O(\sel[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[1]_i_1 
       (.I0(\sel_reg_n_0_[1] ),
        .O(\sel[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[2]_i_1 
       (.I0(\sel_reg_n_0_[2] ),
        .O(\sel[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[3]_i_1 
       (.I0(p_0_in),
        .O(\sel[3]_i_1_n_0 ));
  FDCE \sel_reg[0] 
       (.C(btn_out_0),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\sel[0]_i_1_n_0 ),
        .Q(\sel_reg_n_0_[0] ));
  FDCE \sel_reg[1] 
       (.C(btn_out_1),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\sel[1]_i_1_n_0 ),
        .Q(\sel_reg_n_0_[1] ));
  FDCE \sel_reg[2] 
       (.C(btn_out_2),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\sel[2]_i_1_n_0 ),
        .Q(\sel_reg_n_0_[2] ));
  FDCE \sel_reg[3] 
       (.C(btn_out_3),
        .CE(1'b1),
        .CLR(sw[0]),
        .D(\sel[3]_i_1_n_0 ),
        .Q(p_0_in));
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
