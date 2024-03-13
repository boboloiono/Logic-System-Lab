module Microwave(clk, rst, tenMinutes, minute, tenSeconds, second, pause, start, countDown, finish);
    input clk;
    input rst;
    input tenMinutes;
    input minute;
    input tenSeconds;
    input second;
    input pause;
    input start;
    output [9:0] countDown;
    output       finish;
endmodule