module FA(A, B, Cin, S, Cout);
    input	[3:0]	A, B;
	input			Cin;
    output	[4:0]	S;
    output			Cout;
    assign	{Cout, S} = A + B + Cin;
endmodule