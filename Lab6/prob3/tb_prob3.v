`timescale 1ns/1ps
module tb ();
    reg d, clk;
    wire q, q_bar;
    problem3 pb3 (
        .d(d),
        .clk(clk),
        .q(q),
        .q_bar(q_bar)
    );
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
    end
    initial begin
        d = 1;
        clk = 0;
        #11
        d = 0;
        #10
        d = 1;
        #15
        $display("----------------------");
        $display("-- Simulation End --");
        $display("----------------------");
        $finish;
    end
    always #5 clk = ~clk;
endmodule