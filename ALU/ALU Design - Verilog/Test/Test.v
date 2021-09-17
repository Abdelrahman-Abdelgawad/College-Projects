module Test(input x,output y);
	assign y = x;

	wire [3:0] G;
	wire       Co;
	reg        Ci;
	reg  [2:0] S;
	reg  [3:0] a = 7;
	reg  [3:0] b = 2;
   integer i;
	
	ALU alu1(G,Co,a,b,Ci,S);
	
	initial
		begin
					
			 for(i = 0; i < 16; i=i+1)
			 begin
			     {S,Ci}  = i;
				  #20 $display("i=%d,a=%b,b=%b,S=%b,Ci=%b,G=%b,Co=%b",i,a,b,S,Ci,G,Co);
		    end	
		end

endmodule
