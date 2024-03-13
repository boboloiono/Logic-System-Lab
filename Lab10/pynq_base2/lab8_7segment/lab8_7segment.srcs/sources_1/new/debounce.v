`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/20 23:09:16
// Design Name: 
// Module Name: debounce
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


module debounce(din,dout,clk,rst) ;
input din,clk,rst ;
output reg dout;

reg [2:0] next_state,current_state ;

always@(*)begin
    case(current_state)
    3'd0 : next_state = (din)?3'd0:3'd1;
    3'd1 : next_state = (din)?3'd0:3'd2;
    3'd2 : next_state = (din)?3'd0:3'd3;
    3'd3 : next_state = (din)?3'd0:3'd4;
    3'd4 : next_state = (din)?3'd0:3'd5;
    3'd5 : next_state = (din)?3'd0:3'd5;
    default : next_state = 3'd0 ;
    endcase
end
always@(posedge clk or posedge rst)begin
    if(rst)begin
       current_state <= 3'd0;
    end
    else begin
        current_state <= next_state ;
    end
end
always@(*)begin
    case(current_state)
    3'd0 : dout = 1'b1 ;
    3'd1 : dout = 1'b1 ;
    3'd2 : dout = 1'b1 ;
    3'd3 : dout = 1'b1 ;
    3'd4 : dout = 1'b1 ;
    3'd5 : dout = 1'b0 ;
    default : dout = 1'b1 ;
    endcase
end
endmodule