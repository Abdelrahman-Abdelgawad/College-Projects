module logic_part(output [3:0] LP,
	     			   input  [3:0] A,B,
					   input  S0,S1);

	assign LP = (S0 == 0 & S1 == 0) ? (A & B) :
	            (S0 == 1 & S1 == 0) ? (A | B) :
					(S0 == 0 & S1 == 1) ? (A ^ B) :
					(~A);
						
endmodule
