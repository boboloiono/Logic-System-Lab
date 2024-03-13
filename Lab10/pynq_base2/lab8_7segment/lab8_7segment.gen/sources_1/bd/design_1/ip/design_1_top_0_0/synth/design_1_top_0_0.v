// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:top:1.0
// IP Revision: 1

(* X_CORE_INFO = "top,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *)
(* CORE_GENERATION_INFO = "design_1_top_0_0,top,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_top_0_0 (
  sysclk,
  sw,
  btn,
  led,
  led4_b,
  led4_g,
  led4_r,
  led5_b,
  led5_g,
  led5_r,
  rpio_05_r,
  rpio_06_r,
  rpio_09_r,
  rpio_10_r,
  rpio_11_r,
  rpio_13_r,
  rpio_19_r,
  rpio_26_r
);

input wire sysclk;
input wire [1 : 0] sw;
input wire [3 : 0] btn;
output wire [3 : 0] led;
output wire led4_b;
output wire led4_g;
output wire led4_r;
output wire led5_b;
output wire led5_g;
output wire led5_r;
output wire rpio_05_r;
output wire rpio_06_r;
output wire rpio_09_r;
output wire rpio_10_r;
output wire rpio_11_r;
output wire rpio_13_r;
output wire rpio_19_r;
output wire rpio_26_r;

  top inst (
    .sysclk(sysclk),
    .sw(sw),
    .btn(btn),
    .led(led),
    .led4_b(led4_b),
    .led4_g(led4_g),
    .led4_r(led4_r),
    .led5_b(led5_b),
    .led5_g(led5_g),
    .led5_r(led5_r),
    .rpio_05_r(rpio_05_r),
    .rpio_06_r(rpio_06_r),
    .rpio_09_r(rpio_09_r),
    .rpio_10_r(rpio_10_r),
    .rpio_11_r(rpio_11_r),
    .rpio_13_r(rpio_13_r),
    .rpio_19_r(rpio_19_r),
    .rpio_26_r(rpio_26_r)
  );
endmodule