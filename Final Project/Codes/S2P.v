module S2P (clk,rst,fir_valid,fir_d,s2p_valid,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

input clk;
input rst;
input fir_valid;
input [15:0] fir_d;
output reg s2p_valid;
output reg signed [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

reg [3:0] cnt;

always@(posedge clk or posedge rst)
begin
 
 if (rst)
 begin
  s2p_valid <= 0;
  cnt <= 4'd0;

  x0 <= 16'd0;
  x1 <= 16'd0;
  x2 <= 16'd0;
  x3 <= 16'd0;
  x4 <= 16'd0;
  x5 <= 16'd0;
  x6 <= 16'd0;
  x7 <= 16'd0;
  x8 <= 16'd0;
  x9 <= 16'd0;
  x10 <= 16'd0;
  x11 <= 16'd0;
  x12 <= 16'd0;
  x13 <= 16'd0;
  x14 <= 16'd0;
  x15 <= 16'd0;
 end
 else if (fir_valid)
 begin
  if (cnt == 4'd15)
  begin
   s2p_valid <= 1;
  end
  else
  begin
   s2p_valid <= 0;
  end

  x0 <= x1;
  x1 <= x2;
  x2 <= x3;
  x3 <= x4;
  x4 <= x5;
  x5 <= x6;
  x6 <= x7;
  x7 <= x8;
  x8 <= x9;
  x9 <= x10;
  x10 <= x11;
  x11 <= x12;
  x12 <= x13;
  x13 <= x14;
  x14 <= x15;
  x15 <= fir_d + {15'd0,fir_d[15]};

  cnt <= cnt + 4'd1;
 end

end

endmodule