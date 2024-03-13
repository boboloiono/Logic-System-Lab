module problem1_1 (input s0,input s1,input s2,input s3,output e,output f,output g,output h);

    wire b_out, c_out, d_out, e_out, P1, P0, E, out_a, out_b, out_c, out_d;
    
    and (P1, ~s0, ~s1);
    and (b_out, ~s0, s1);
    and (c_out, ~s0, ~s2);
    or (d_out, s0, s1);
    or (e_out, s2, s3);
    or (E, d_out, e_out);
    or (P0, b_out, c_out);

    and (out_a, ~P1, ~P0);
    and (out_b, ~P1, P0);
    and (out_c, P1, ~P0);
    and (out_d, P1, P0);
    and (e, out_a, E);
    and (f, out_b, E);
    and (g, out_c, E);
    and (h, out_d, E);
    
endmodule