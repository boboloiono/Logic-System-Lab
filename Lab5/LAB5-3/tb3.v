module tb ();
    // Register
    reg[7:0] in0, in1;
    reg c;
    wire [8:0] out;
    ADDER_8b DUT(.A(in0), .B(in1), .Cin(c), .S(out[7:0]), .Cout(out[8]));
    // Initialization
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
    end
    integer i, err;
    initial 
    begin
        err = 0;
        for (i = 0; i < 'h1ffff; i = i + 1) begin
            in0 = i & 'hff;
            in1 = (i>>8) & 'hff;
            c = (i >> 9) & 'b1;
            #10;
            if (out !== in0 + in1 + c) begin
                err = err + 1;
                $display ("%d + %d + %d != %d", in0, in1, c, out);
            end
        end
        if (err === 0)
        begin
            $display("\n");
            $display("\n");
            $display("        ****************************    _._     _,-'\"\"`-._        ");
            $display("        **  Congratulations !!    **   (,-.`._,'(       |\\`-/|     ");
            $display("        **  Simulation1 PASS!!    **       `-.-' \\ )-`( , o o)     ");
            $display("        ****************************             `-    \\`_`\"'-    ");
            $display("\n");
        end
        else
        begin
            $display("\n");
            $display("\n");
            $display("        ****************************         |\\      _,,,---,,_     ");
            $display("        **  OOPS!!                **   ZZZzz /,`.-'`'    -.  ;-;;,_  ");
            $display("        **  Simulation1 Failed!!  **        |,4-  ) )-,_. ,\\ (  `'-'");
            $display("        ****************************       '---''(_/--'  `-'\\_)     ");
            $display("         Totally has %d errors                     ", err); 
            $display("\n");
        end
        $finish;
    end 
endmodule
