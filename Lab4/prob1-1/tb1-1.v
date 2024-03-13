module tb ();
    // 設定保全門口所需的輸入與輸出之變數
    reg s0,s1,s2,s3;
    wire e,f,g,h;
    problem1_1 pb1 (
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .e(e),
        .f(f),
        .g(g),
        .h(h)
    );
    // Initialization
    // 利用行為層次語法，設定各個初始區塊
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
    end

    //首先，利用 $fopen 打開已經寫好的 golden data，並將檔案讀入
    integer fd;
    initial
    begin
        fd = $fopen("golden.data","r");
    end
    integer i; //arr idx
    integer fail; // count fail times
    integer count; // total iterations
    reg ge,gf,gg,gh; // golden 
    initial 
    begin
    count = 0;
    fail = 0;
    // 設定 mux 的 input variables
    for( i = 0;i < 16;i = i+1) begin
        s0 = i[0];
        s1 = i[1];
        s2 = i[2];
        s3 = i[3];
        count = count +1;
        // 利用 $fscanf 讀取四行 golden data，並各別存到四個變數中
        $fscanf(fd,"%d",ge);
        $fscanf(fd,"%d",gf);
        $fscanf(fd,"%d",gg);
        $fscanf(fd,"%d",gh);
        #10; // 讀完一排 golden data 後，延遲十秒，再做判斷
        // 若 file讀進來的數值與 wire 不同，則 fail 就加一，並顯示錯誤。
        if((e !== ge) || (f !== gf) || ( g !== gg) || (h !== gh)) begin
            fail = fail + 1;
            $display("Case %d:\n\tInput s0,s1,s2,s3 : %d,%d,%d,%d\n\tExpect e,f,g,h : %d,%d,%d,%d\n\tOutput e,f,g,h : %d,%d,%d,%d\n",count,s0,s1,s2,s3,ge,gf,gg,gh,e,f,g,h);
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
        // 完成後利用 $fclose 關閉檔案，並加上 $finish 結束模擬運算。
        $fclose(fd);
        $finish;
    end 
endmodule