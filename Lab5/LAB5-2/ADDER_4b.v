// 4-bit Ripple Carry Adder
module ADDER_4b(A, B, Cin, S, Cout);
	input	[3:0]	A, B;
	input 			cin;
	output	[4:0]	sum;
	output			cout;
	wire	[3:0]	channel;

	FA u1(A[0],B[0],Cin,S[0],channel[0]);
	FA u2(A[1],B[1],channel[0],S[1],channel[1]);
	FA u3(A[2],B[2],channel[1],S[2],channel[2]);
	FA u4(A[3],B[3],channel[2],S[3],channel[3]);
	
	assign Cout = channel[3];
	assign S[4] = Cout;
endmodule