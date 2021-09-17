module B_input_logic(output Yi,
                     input Bi,S0,S1);
	assign Yi = (Bi & S0) | (~Bi & S1);
endmodule
