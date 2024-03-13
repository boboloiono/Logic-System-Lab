module problem2_2 (input a ,input b,input c,output s, output carry);
    wire a_out, b_out;

    xor (a_out, a, b);
    and (b_out, a, b);
    xor (sum, a_out, c);
    and (c_out, a_out, c);
    or (carry, c_out, b_out);
endmodule