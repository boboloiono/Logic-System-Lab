module tb ();
    // 設定半加器輸入與輸出所需的變數
    // Register
    reg a,b;
    wire s,c;
    problem2_1 pb3 (
        .a(a),
        .b(b),
        .c(c),
        .s(s)
    );
    // Initialization
    // 利用行為層次語法，設定各個初始區塊
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
    end
    //READ file
    //利用 $fopen 打開我們自行編寫的 golden data，並將檔案讀入
    integer fd;
    initial
    begin
        fd = $fopen("golden.data","r");
    end
    integer i;
    integer fail;
    integer count;
    reg gc,gs;
    initial  
    begin
        count = 0;
        fail = 0;
        // 設定 半加器 的 input variables
        for (i = 0; i < 4; i = i + 1) begin
            a = i[0];
            b = i[1];
            // 利用 $fscanf 讀取兩行 golden data，並各別存到兩個變數中
            $fscanf(fd,"%d %d",gc,gs);
            count = count + 1; 
            #10; // 讀完一排 golden data 後，延遲十秒，再做判斷
            // 若 file 讀進來的數值與 wire 不同，則 fail 就加一，並顯示錯誤。
            if((gc !== c) || (gs !== s))begin
                fail = fail + 1;
                $display("Case %d :\n\tInput a,b : %d,%d\n\tExpect c,s : %d,%d\n\tOutput c,s : %d,%d\n",count,a,b,gc,gs,c,s);
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

               