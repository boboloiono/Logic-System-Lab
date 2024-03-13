`timescale 1ns/10ps
`define CYCLE      50.0  
`define End_CYCLE  1000000
`define PATTERN    "test.data"
`define GOLDEN     "golden.data"

`include "MicrowaveDoor.v"

module tb_MicrowaveDoor;

    logic clk = 0;
    logic rst = 0;
    logic tenMinutes;
    logic minute;
    logic tenSeconds;
    logic second;
    logic pause;
    logic start;
    logic door;
    logic [9:0] countDown;
    logic       finish;

    // Test Module
    MicrowaveDoor microwaveDoor
    (
        .clk(clk),
        .rst(rst),
        .tenMinutes(tenMinutes),
        .minute(minute),
        .tenSeconds(tenSeconds),
        .second(second),
        .pause(pause),
        .start(start),
        .door(door),
        .countDown(countDown), 
        .finish(finish)
    );

    // System Clock
    always 
    begin 
        #(`CYCLE / 2) clk = ~clk; 
    end
    // Initialization
    initial 
    begin
        $display("----------------------");
        $display("-- Simulation Start --");
        $display("----------------------");
        rst = 1'b1; 
        #(`CYCLE * 2);  
        rst = 1'b0;
    end

    integer fd;
    integer fg;
    logic [22:0] cycle=0;
    // Check whether in forever loop
    always @(posedge clk) 
    begin
        cycle = cycle + 1;
        if (cycle > `End_CYCLE) 
        begin
            $display("--------------------------------------------------");
            $display("-- Failed waiting valid signal, Simulation STOP --");
            $display("--------------------------------------------------");
            $fclose(fd);
            $finish;
        end
    end
    // Read test data
    initial 
    begin
        fd = $fopen(`PATTERN,"r");
        if (fd == 0) 
        begin
            $display ("pattern handle null");
            $finish;
        end
    end
    // Read Golden data
    initial 
    begin
        fg = $fopen(`GOLDEN,"r");
        if (fg == 0) 
        begin
            $display ("golden handle null");
            $finish;
        end
    end

    integer pass = 0;
    integer fail = 0;
    integer test = 0;
    string testLine;
    integer golden = 0;
    string goldenLine;
    string information;
    integer testNumber = 0;

    logic [9:0] GCountDown;
    logic       GFinish;
    
    always @(negedge clk)
    begin
        if (rst)
        begin
            tenMinutes = 1'd0;
            minute = 1'd0;
            tenSeconds = 1'd0;
            second = 1'd0;
            pause = 1'd0;
            start = 1'd0;
            door = 1'd0;
        end
        else if (!$feof(fd) && !$feof(fg))
        begin
            test = $fgets (testLine, fd);
            if (test != 0)
            begin
                while (testLine.substr(0, 1) == "//")
                begin
                    // $display("%s", testLine);
                    test = $fgets (testLine, fd);
                end
                test = $sscanf(testLine, "%d %d %d %d %d %d %d", tenMinutes, minute, tenSeconds, second, pause, start, door);
                // $display("Operation: %d, Input: %d", operation, in);
            end
            golden = $fgets (goldenLine, fg);
            if (golden != 0)
            begin
                while (goldenLine.substr(0, 1) == "//")
                begin
                    // $display("%s", goldenLine);
                    information = goldenLine;
                    golden = $fgets (goldenLine, fg);
                end
                testNumber = testNumber + 1;
                golden = $sscanf(goldenLine, "%d %d", GCountDown, GFinish);
                if ((countDown == GCountDown) && (finish == GFinish)) 
                begin
                    pass = pass + 1;
                end
                else
                begin
                    $display("\n[Test %2d]\n\t%s\tCountDown = %d, Finish = %d\n\tExpect CountDown = %d, Finish = %d",
                                testNumber, information, countDown, finish, GCountDown, GFinish);
                    fail = fail + 1;
                end
            end
        end
        else
        begin
            $fclose(fd);
            $fclose(fg);
            if (fail === 0)
                begin
                    $display("\n");
                    $display("\n");
                    $display("        ****************************    .----------------.                      ");
                    $display("        **                        **   /__________________\\                    ");
                    $display("        **  Congratulations !!    **   ||\\ ________ /|  _ |                     ");
                    $display("        **                        **   || |:      :| |o(_)|   .---------------. ");
                    $display("        **  Simulation2 PASS!!    **   || |;- :) -;| |o(_)|  ( It Tastes Good! )");
                    $display("        **                        **   || |________| | __ |   ,---------------' ");
                    $display("        ****************************   ||/__________\\|[__]| -'                  ");
                    $display("\n");
                end
                else
                begin
                    $display("\n");
                    $display("\n");
                    $display("        ****************************    .-----------------.                       ");
                    $display("        **                        **   /___________________\\                     ");
                    $display("        **  Congratulations !!    **   ||\\ _________ /|  _ |                      ");
                    $display("        **                        **   || |:       :| |o(_)|   .----------------. ");
                    $display("        **  Simulation2 Failed!!  **   || |;- >:( -;| |o(_)|  ( KILL ALL HUMANS! )");
                    $display("        **                        **   || |_________| | __ |   ,----------------' ");
                    $display("        ****************************   ||/___________\\|[__]| -'                   ");
                    $display("         Totally has %d errors                     ", fail); 
                    $display("\n");
                end
            result(fail, (pass + fail));
            $finish;
        end
    end

    task result;
        input integer err;
        input integer num;
        integer rf;
        begin
            rf = $fopen("result.txt", "w");
            $fdisplay(rf, "%d,%d", num - err, num);
        end
    endtask
endmodule
