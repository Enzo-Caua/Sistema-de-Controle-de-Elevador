// Divisor de Frequencia de 50MHz ate 1Hz

module divisor_frequencia_principal(clk, clk_out, clk_aux, clk_botao);
	input clk;
	output clk_out, clk_aux, clk_botao;
	
	wire [8:0] out;
	wire [5:0] q;
	
	divisor_frequencia_128Hz div1 (.clk(clk),.clk_128Hz(out[1]));
	flip_flop_d div2(.q(q[0]),.d(~q[0]),.reset(reset),.clk(out[1]));
	flip_flop_d div3(.q(q[1]),.d(~q[1]),.reset(reset),.clk(~q[0]));
	flip_flop_d div4(.q(q[2]),.d(~q[2]),.reset(reset),.clk(~q[1]));
	flip_flop_d div5(.q(q[3]),.d(~q[3]),.reset(reset),.clk(~q[2]));
	flip_flop_d div6(.q(q[4]),.d(~q[4]),.reset(reset),.clk(~q[3]));
	flip_flop_d div7(.q(q[5]),.d(~q[5]),.reset(reset),.clk(~q[4]));
	flip_flop_d div8(.q(clk_out),.d(~clk_out),.reset(reset),.clk(~q[5]));

endmodule
