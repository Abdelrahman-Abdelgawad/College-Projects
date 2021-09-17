module arithmetic_part(output [3:0] AP,
                       output       Co,
							  input  [3:0] A,B,
							  input  Ci,S0,S1);

	wire [3:0] Y;
	wire [2:0] C;	
	
	B_input_logic Bil1(Y[0],B[0],S0,S1);
	B_input_logic Bil2(Y[1],B[1],S0,S1);
	B_input_logic Bil3(Y[2],B[2],S0,S1);
	B_input_logic Bil4(Y[3],B[3],S0,S1);
	
	full_adder fa1(AP[0],C[0],A[0],Y[0], Ci );
	full_adder fa2(AP[1],C[1],A[1],Y[1],C[0]);
	full_adder fa3(AP[2],C[2],A[2],Y[2],C[1]);
	full_adder fa4(AP[3], Co ,A[3],Y[3],C[2]);

endmodule
