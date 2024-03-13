module Queue(clk, rst, operation, in, out, empty, full);
    input       clk;
    input       rst;
    input [1:0] operation;
    input [7:0] in;
    // Register
    output reg [7:0] out;
    output reg   empty;
    // Wire
    output reg   full;
    reg [7:0] memory [7:0];
    integer front;
    integer rear;

    always @(rst)
    begin
        front = 0;
        rear = 0;
        empty = 1;
        full = 0;
    end
    
    always @(posedge clk)
    begin
        case(operation)
            2'b00:;
            2'b01:
                begin
                    if(full === 1)  $display("Queue is full!\n");
                    else
                        begin
                            memory[rear] = in;
                            rear = rear + 1;
                            empty = 0;
                            if(rear === 8)   rear = 0;
                            if(front === rear)  full = 1;
                        end
                end
            2'b10:
                begin
                    if(empty === 1)  $display("Queue is empty!\n");
                    else
                        begin
                            out = memory[front];
                            front = fronmodule Queue(clk, rst, operation, in, out, empty, full);
            2'b11:
                begin
                    front = 0;
                    rear = 0;
                    empty = 1;
                    full = 0;
                end
            default:    $display("Error!");
        endcase
    end
endmodule