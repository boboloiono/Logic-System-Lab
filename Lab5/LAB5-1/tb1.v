module tb ();
    // Register
    reg[3:0] in0, in1;
    reg c;
    wire [4:0] out;
    ADDER_4b DUT(.A(in0), .B(in1), .Cin(c), .S(out[3:0]), .Cout(out[4]));
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
        for (i = 0; i < 'h1ff; i = i + 1) begin
            in0 = i & 'hf;
            in1 = (i >> 4) & 'hf;
            c = (i >> 5) & 'b1;
            #10;
            if (out !== in0 + in1 + c) begin
                err = err + 1;
                $display ("%d + %d + %d != %b", in0, in1, c, out);
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
