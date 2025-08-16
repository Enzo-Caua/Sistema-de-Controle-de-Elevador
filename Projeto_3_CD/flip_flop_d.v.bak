// ESTE MODULO DESCREVE O FLIP-FLOP D UTILIZADO PARA O PROJETO. OBSERVE QUE A ABORDAGEM UTILIZADA FOI A ESTRUTURAL.
module flip_flop_d(q,d,reset,clk);
	input d; 
	input clk;
	input reset;
	output reg q;
	
	always @(posedge clk or posedge reset) 
	begin
		 if(reset==1'b1)
		  q <= 1'b0; 
		 else 
		  q <= d; 
	end
endmodule