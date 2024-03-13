`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/16 16:36:35
// Design Name: 
// Module Name: top
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


module top(
    input sysclk,//used
    input [1:0] sw,//used
    input [3:0] btn,//used
    output reg [3:0] led,//used
    output wire led4_b,
    output wire led4_g,
    output wire led4_r,
    output reg led5_b,
    output reg led5_g,
    output reg led5_r,
    //gpio
    output wire [7:0] ar //used
    );
    reg [3:0]sel;
    wire [3:0] btn_out ;

    reg [1:0] mode ;

    always@(posedge sw[1] or posedge sw[0])begin
        if(sw[0])begin
            mode <= 2'd0 ;
        end
        else begin
            mode <= mode + 2'd1 ;
        end
    end
    // cotroll led5 from mode

    // controll led and sel from debounce output(btn_out) and reset signal(sw[0]).
    
debounce debounce_1(.din(btn[3]),.dout(btn_out[3]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_2(.din(btn[2]),.dout(btn_out[2]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_3(.din(btn[1]),.dout(btn_out[1]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_4(.din(btn[0]),.dout(btn_out[0]),.clk(sysclk),.rst(sw[0])) ;    
 
seg7 seg7_(.a(sel),.out(ar[6:0]),.mode(mode));
    
    
endmodule
