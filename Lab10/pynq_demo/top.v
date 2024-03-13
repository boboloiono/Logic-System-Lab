`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/27 19:49:21
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
    output wire led5_b,
    output wire led5_g,
    output wire led5_r,
    //gpio
    output wire [7:0] ar //used
    );
    reg [3:0]sel;
    wire [3:0] btn_out ;

    
    
    always@(posedge btn[3] or posedge sw[0])begin
        if(sw[0])begin
            led[3] <= 1'd0 ;
            sel[3] <= 1'd0 ;
        end
        else begin
            led[3] <= ~led[3] ;
            sel[3] <= ~sel[3] ;
        end
    end
    always@(posedge btn[2] or posedge sw[0])begin
        if(sw[0])begin
            led[2] <= 1'd0 ;
            sel[2] <= 1'd0 ;
        end
        else begin
            led[2] <= ~led[2] ;
            sel[2] <= ~sel[2] ;
        end
    end
    always@(posedge btn[1] or posedge sw[0])begin
        if(sw[0])begin
            led[1] <= 1'd0 ;
            sel[1] <= 1'd0 ;
        end
        else begin
            led[1] <= ~led[1] ;
             sel[1] <= ~sel[1] ;
        end
    end
    always@(posedge btn[0] or posedge sw[0])begin
        if(sw[0])begin
            led[0] <= 1'd0 ;
            sel[0] <= 1'd0 ;
        end
        else begin
            led[0] <= ~led[0] ;
            sel[0] <= ~sel[0] ;
        end
    end
    
debounce debounce_1(.din(btn[3]),.dout(btn_out[3]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_2(.din(btn[2]),.dout(btn_out[2]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_3(.din(btn[1]),.dout(btn_out[1]),.clk(sysclk),.rst(sw[0])) ;
debounce debounce_4(.din(btn[0]),.dout(btn_out[0]),.clk(sysclk),.rst(sw[0])) ;    

seg7 seg7_(.a(sel),.out(ar[6:0]));
    
    
endmodule
