module full_adder(output S, 
                  output Co,
                  input A , B , Ci);
    wire O1;
	 assign O1 = A ^ B;
	 assign S = O1 ^ Ci;
	 assign Co = (A & B) | (Ci & O1);
endmodule
