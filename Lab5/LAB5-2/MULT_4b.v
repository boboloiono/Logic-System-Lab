module MULT_4b(A, B, P);
	input	[3:0]	A,B;
	output	[7:0]	P;
	wire	Cout_0, Cout_1, Cout_2;
	wire	[7:0]	Augend, A_ ,Add;
	
	assign A_ = A;

	case(B[0])
	1'b0:	Augend = 8'b00000000;
	1'b1:	Augend = A_;
	endcase

	ADDER_8b(Augend, A_<< 1, 0, Add, Cout_0);

	case(B[1])
	1'b1:	Augend = Add;
	endcase
	
	ADDER_8b(Augend, A_<< 2, 0, Add, Cout_1);

	case(B[2])
	1'b1:	Augend = Add;
	endcase

	ADDER_8b(Augend, A_<< 3, 0, Add, Cout_2);

	case(B[3])
	1'b0:	P = Augend;
	1'b1:	P = Add;
	endcase

endmodule

module MULT_4b(A, B, P);

	input   [3:0]   A,B;
	output	[7:0]  	P;
	wire	[3:0]	Augend0,Addend0,Sum0,Sum1,Augend2,Addend2;
	wire			Carry0,Carry1;
	//
	// Augend0 = (A * B[0]) rshift 1
	//
	case(sel)
	and(P[0], A[0], B[0]);        // Bit 0 goes straight to P.
	and(Augend0[0], A[1], B[0]);
	and(Augend0[1], A[2], B[0]);
	and(Augend0[2], A[3], B[0]);
	assign Augend0[3] = 0;

	//
	// Addend0 = A * B[1]
	//
	and(Addend0[0], A[0], B[1]);
	and(Addend0[1], A[1], B[1]);
	and(Addend0[2], A[2], B[1]);
	and(Addend0[3], A[3], B[1]);

	RCA_4b rc0(Augend0, Addend0, 0, Sum0, Carry0); // {Carry0, Sum0} = Augend0 + Addend0
	assign P[1] = Sum0[0];

	//
	// Addend1 = A * B[2]
	//
	and(Addend1[0], A[0], B[2]);
	and(Addend1[1], A[1], B[2]);
	and(Addend1[2], A[2], B[2]);
	and(Addend1[3], A[3], B[2]);

	RCA_4b rc1(Augend1, Addend1, Carry0, Sum1, Carry1); // {Carry1, Sum1} = Augend1 + Addend1
	assign P[2] = Sum1[0];
	
	//
	// Augend2 = (Augend1 + Addend1) rshift 1
	//
	assign Augend2[0] = Sum1[1];
	assign Augend2[1] = Sum1[2];
	assign Augend2[2] = Sum1[3];
	assign Augend2[3] = Carry1;
	
	//
	// Addend2 = A * B[3]
	//
	and(Addend2[0], A[0], B[3]);
	and(Addend2[1], A[1], B[3]);
	and(Addend2[2], A[2], B[3]);
	and(Addend2[3], A[3], B[3]);

	RCA_4b rc2(Augend2, Addend2, Carry1, P[6:3], P[7]);  // {P[7], P[6], P[5], P[5], P[3]} = Augend2 + Addend2

endmodule