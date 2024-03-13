`timescale 1ns/1ps
module tb ();
    reg d, c;
    wire q, q_bar;
    problem1 pb1 (
        .d(d),
        .c(c),
        .q(q),
        .q_bar(q_bar)
    );
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
        d = 0;
        c = 1;
        #1
        c = 0;
        #5
        c = 1;
        #1
        c = 0;
        #15
        c = 1;
        #1
        c = 0;
        #15
        c = 1;
        #15
        $display("----------------------");
        $display("-- Simulation End --");
        $display("----------------------");
        $finish;
    end
    always #5 d = ~d;
endmodule