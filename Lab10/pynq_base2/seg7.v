`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/16 18:40:38
// Design Name: 
// Module Name: seg7
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module seg7(clk,rst,a,out);

input clk;
input rst ;
input [3:0]a ;

output reg [6:0] out ;

//reg [6:0] out ;

//reg [3:0] sel ;
/*
always@(posedge a)begin
    if(rst)begin
        sel <= 4'd0 ;
    end

    else begin
        sel <= sel + 4'd1 ;
    end
end
*/
always@(*)begin
	case(a)
		4'b0000: out = 7'b1000000;
		4'b0001: out = 7'b1111001;
		4'b0010: out = 7'b0100100;
		4'b0011: out = 7'b0110000;
		4'b0100: out = 7'b0011001;
		4'b0101: out = 7'b0010010;
		4'b0110: out = 7'b0000010;
		4'b0111: out = 7'b1111000;
		4'b1000: out = 7'b0000000;
		4'b1001: out = 7'b0010000;
		4'b1010: out = 7'b0001000;
		4'b1011: out = 7'b0000011;
		4'b1100: out = 7'b1000110;
		4'b1101: out = 7'b0100001;
		4'b1110: out = 7'b0000110;
		4'b1111: out = 7'b0001110;
		default: out = 7'b1111111;
	endcase
end
endmodule
