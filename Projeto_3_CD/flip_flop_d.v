// Flip Flop Tipo D

module flip_flop_d(q, q_n, d,reset,clk);
	input d; 
	input clk;
	input reset;
	output reg q;
	output wire q_n;
	
	always @(posedge clk or posedge reset) 
	begin
		if(reset==1'b1)
			q <= 1'b0; 
		else 
			q <= d; 
	end
	
	assign q_n = ~q;
	
endmodule
