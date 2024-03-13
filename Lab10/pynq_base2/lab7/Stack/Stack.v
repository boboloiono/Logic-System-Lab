module Stack(clk, rst, operation, in, out, empty, full);
    input       clk;
    input       rst;
    input [1:0] operation;
    input [7:0] in;
    // Register
    output reg [7:0] out;
    output reg   empty;
    // Wire
    output reg   full;
    integer pointer;
    reg [7:0] memory [7:0];

    always @(rst)
    begin
        pointer = -1;
        empty = 1;
        full = 0;
    end

    always @(posedge clk)
    begin
        case(operation)
            2'b00:;
            2'b01:
                if(full === 1)
                    $display("Stack is full!\n");
                else
                    begin
                        pointer = pointer+1;
                        memory[pointer] = in;
                    end
            2'b10:
                if(empty === 1)
                    $display("Stack is empty!");
                else
                    begin
                        out = memory[pointer];
                        pointer = pointer-1;
                    end
            2'b11:
                pointer = -1;
            default;
        endcase

        begin
        if(pointer === -1)
            begin
                empty = 1;
                full = 0;
            end             
        else if(pointer === 7)
            begin
                full = 1;
            end
        else
            begin
                full = 0;
                empty = 0;
            end
        end
    end
endmodule