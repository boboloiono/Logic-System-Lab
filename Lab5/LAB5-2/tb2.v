module tb ();
    // Register
    reg[3:0] in0, in1;
    wire [7:0] out;
    MULT_4b DUT(.A(in0), .B(in1), .Product(out));
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
        for (i = 0; i < 'hff; i = i + 1) begin
            in0 = i & 'hf;
            in1 = (i>>4) & 'hf;
            #10;
            if (out !== in0 * in1) begin
                err = err + 1;
                $display ("%d * %d != %d", in0, in1, out);
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
