module ALU(output [3:0] G,
           output       CoF,
			  input  [3:0] A,B,
			  input        Ci,
			  input  [2:0] S);

	wire [3:0] APo,LPo;
	wire       Co;
	
	arithmetic_part AP(APo,Co,A,B,Ci,S[0],S[1]);
	logic_part      LP(LPo,A,B,S[0],S[1]);
	
	assign CoF = (Co & ~S[2]);
	assign G = (S[2] == 0) ? APo : LPo;
	
endmodule
