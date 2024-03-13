module tb ();
    // 設定多工器與解多工器所需的變數
    // Register
    reg s0,s1,s2,s3,a,b,c,d;
    wire e,f,g,h;
    problem1_2 pb2 (
        .mux_s0(s0),
        .mux_s1(s1),
        .demux_s0(s2),
        .demux_s1(s3),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h)
    );
    // Initialization
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
    end
    //READ file
    //首先，利用 $fopen 打開已經寫好的 golden data，並將檔案讀入
    integer fd;
    initial
    begin
        fd = $fopen("golden.data","r");
    end
    integer i,sel; //arr idx
    integer fail; // count fail times
    integer count; // total iterations
    reg ge,gf,gg,gh; // golden 
    initial 
    begin
    count = 0;
    fail = 0;
    // 設定 mux 的 input variables
    for( i = 0;i < 16;i = i+1) begin
        a = i[0];
        b = i[1];
        c = i[2];
        d = i[3];
        for (sel = 0 ;sel < 16 ;sel = sel + 1) begin
            // 設定 demux 的 input variables
            s0 = sel[0];
            s1 = sel[1];
            s2 = sel[2];
            s3 = sel[3];
            count = count + 1;
            // 利用 $fscanf 讀取四行 golden data，並各別存到四個變數中
            $fscanf(fd,"%d %d %d %d",ge,gf,gg,gh);
            #10;  // 讀完一排 golden data 後，延遲十秒，再做判斷
            // 若 file 讀進來的數值與 wire 不同，則 fail 就加一，並顯示錯誤。
            if((e !== ge) || (f !== gf) || ( g !== gg) || (h !== gh)) begin
                $display("Case %d :\n\t Input a,b,c,d : %d,%d,%d,%d\n\tMux s1,s0 : %d,%d\n\tDemux s1,s0 : %d,%d\n\tExpect e,f,g,h : %d,%d,%d,%d\n\tOutput e,f,g,h : %d,%d,%d,%d\n",count,a,b,c,d,s1,s0,s3,s2,ge,gf,gg,gh,e,f,g,h);
                fail = fail + 1;
            end
        end
    end
    // 如果都沒有錯誤，則顯示通過，否則顯示失敗
        if (fail === 0)
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
            $display("         Totally has %d errors                     ", fail); 
            $display("\n");
        end
        $fclose(fd);
        $finish;
    end 
endmodule