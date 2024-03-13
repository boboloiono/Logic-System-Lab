module ADDER_8b(A, B, Cin, S, Cout);
    input   [7:0]   A,B;
    input   Cin;
    output  [7:0]   S;
    output  Cout;

    wire    [3:0]  s_0, s_1;
    wire    sel, Count_0, Count_1;

    ADDER_4b(A[3:0], B[3:0], Cin, S[3:0], sel);
    ADDER_4b(A[7:4], B[7:4], 1'b0, s_0[3:0], Count_0);
    ADDER_4b(A[7:4], B[7:4], 1'b1, s_1[3:0], Count_1);

    case(sel)
    1'b0:  {Cout, S[7:4]} = {Cout_0, s_0[3:0]}
    1'b1:  {Cout, S[7:4]} = {Cout_1, s_1[3:0]}
    endcase
endmodule