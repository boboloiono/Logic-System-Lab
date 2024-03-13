// 8-bit Ripple Carry Adder
module ADDER_8b(A, B, cin, sum ,cout);
	input	[7:0]	A, B;
	input 			cin;
	output	[7:0]	sum;
	output			cout;
	wire	channel;

	ADDER_4b u1(A[3:0],B[3:0],cin,Sum[3:0],channel);
	ADDER_4b u2(A[7:4],B[7:4],channel,Sum[7:4],cout);

endmodule