// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Apr 20 19:08:55 2022
// Host        : DESKTOP-QO1RQK3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire [1:0]sw;

  assign ar[7] = \<const0> ;
  assign ar[6:0] = \^ar [6:0];
  assign led[3] = \<const0> ;
  assign led[2] = \<const0> ;
  assign led[1] = \<const0> ;
  assign led[0] = \<const0> ;
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
        .btn(btn[3]),
        .sw(sw[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7
   (ar,
    btn,
    sw);
  output [6:0]ar;
  input [0:0]btn;
  input [0:0]sw;

  wire [6:0]ar;
  wire [0:0]btn;
  wire [3:2]p_0_in;
  wire \sel[0]_i_1_n_0 ;
  wire \sel[1]_i_1_n_0 ;
  wire [3:0]sel_reg;
  wire [0:0]sw;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \ar[0]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[2]),
        .I2(sel_reg[0]),
        .I3(sel_reg[1]),
        .O(ar[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \ar[1]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[2]),
        .I2(sel_reg[1]),
        .I3(sel_reg[0]),
        .O(ar[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \ar[2]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[0]),
        .I2(sel_reg[1]),
        .I3(sel_reg[2]),
        .O(ar[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \ar[3]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[2]),
        .I2(sel_reg[0]),
        .I3(sel_reg[1]),
        .O(ar[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \ar[4]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[1]),
        .I2(sel_reg[2]),
        .I3(sel_reg[0]),
        .O(ar[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \ar[5]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[2]),
        .I2(sel_reg[0]),
        .I3(sel_reg[1]),
        .O(ar[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \ar[6]_INST_0 
       (.I0(sel_reg[3]),
        .I1(sel_reg[0]),
        .I2(sel_reg[2]),
        .I3(sel_reg[1]),
        .O(ar[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \sel[0]_i_1 
       (.I0(sel_reg[0]),
        .O(\sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sel[1]_i_1 
       (.I0(sel_reg[0]),
        .I1(sel_reg[1]),
        .O(\sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sel[2]_i_1 
       (.I0(sel_reg[0]),
        .I1(sel_reg[1]),
        .I2(sel_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sel[3]_i_1 
       (.I0(sel_reg[1]),
        .I1(sel_reg[0]),
        .I2(sel_reg[2]),
        .I3(sel_reg[3]),
        .O(p_0_in[3]));
  FDCE \sel_reg[0] 
       (.C(btn),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[0]_i_1_n_0 ),
        .Q(sel_reg[0]));
  FDCE \sel_reg[1] 
       (.C(btn),
        .CE(1'b1),
        .CLR(sw),
        .D(\sel[1]_i_1_n_0 ),
        .Q(sel_reg[1]));
  FDCE \sel_reg[2] 
       (.C(btn),
        .CE(1'b1),
        .CLR(sw),
        .D(p_0_in[2]),
        .Q(sel_reg[2]));
  FDCE \sel_reg[3] 
       (.C(btn),
        .CE(1'b1),
        .CLR(sw),
        .D(p_0_in[3]),
        .Q(sel_reg[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (ar,
    btn,
    sw);
  output [6:0]ar;
  input [0:0]btn;
  input [0:0]sw;

  wire [6:0]ar;
  wire [0:0]btn;
  wire [0:0]sw;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_seg7 seg7
       (.ar(ar),
        .btn(btn),
        .sw(sw));
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
