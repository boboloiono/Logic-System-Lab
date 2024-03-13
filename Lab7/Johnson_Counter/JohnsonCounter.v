module JohnsonCounter(clk, rst, q);
    input       clk;
    input       rst;
    output [5:0] q;

    reg [5:0] q;
    
    always @(posedge clk)
    begin
    
    if(rst)
        q=6'd0;
    else
        begin 
            q[5]<=q[4];
            q[4]<=q[3];
            q[3]<=q[2];
            q[2]<=q[1];
            q[1]<=q[0];
            q[0]<=(~q[5]);
        end
    end
endmodule