module problem1_2 (input a,input b,input c,input d,input mux_s0,input mux_s1,input demux_s0,input demux_s1,output e,output f,output g,output h);
    
    wire a_out, b_out, c_out, d_out, e_out, f_out, g_out, h_out, j_out, k_out, N, out_a,out_b,out_c,out_d;;

    and (a_out, ~mux_s1, ~mux_s0);
    and (b_out, ~mux_s1, mux_s0);
    and (c_out, mux_s1, ~mux_s0);
    and (d_out ,mux_s1, mux_s0);
    and (e_out, a_out, a);
    and (f_out, b_out, b);
    and (g_out, c_out, c);
    and (h_out, d_out, d);
    or (j_out, e_out, f_out);
    or (k_out, g_out, h_out);
    or (N, j_out, k_out);

    and (out_a, ~demux_s1, ~demux_s0);
    and (out_b, ~demux_s1, demux_s0);
    and (out_c, demux_s1, ~demux_s0);
    and (out_d ,demux_s1, demux_s0);
    and (e, out_a, N);
    and (f, out_b, N);
    and (g, out_c, N);
    and (h, out_d, N);
       
endmodule