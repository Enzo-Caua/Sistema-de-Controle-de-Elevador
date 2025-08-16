// Divisor de Frequencia de 50MHz para 128Hz
module divisor_frequencia_128Hz(clk, clk_128Hz);
	input clk;
	output clk_128Hz;
	wire reset;
	wire [17:0] q;
	
	flip_flop_d b0(.q(q[0]),.d(~q[0]),.reset(reset),.clk(clk));
	flip_flop_d b1(.q(q[1]),.d(~q[1]),.reset(reset),.clk(~q[0]));
	flip_flop_d b2(.q(q[2]),.d(~q[2]),.reset(reset),.clk(~q[1]));
	flip_flop_d b3(.q(q[3]),.d(~q[3]),.reset(reset),.clk(~q[2]));
	flip_flop_d b4(.q(q[4]),.d(~q[4]),.reset(reset),.clk(~q[3]));
	flip_flop_d b5(.q(q[5]),.d(~q[5]),.reset(reset),.clk(~q[4]));
	flip_flop_d b6(.q(q[6]),.d(~q[6]),.reset(reset),.clk(~q[5]));
	flip_flop_d b7(.q(q[7]),.d(~q[7]),.reset(reset),.clk(~q[6]));
	flip_flop_d b8(.q(q[8]),.d(~q[8]),.reset(reset),.clk(~q[7]));
	flip_flop_d b9(.q(q[9]),.d(~q[9]),.reset(reset),.clk(~q[8]));
	flip_flop_d b10(.q(q[10]),.d(~q[10]),.reset(reset),.clk(~q[9]));
	flip_flop_d b11(.q(q[11]),.d(~q[11]),.reset(reset),.clk(~q[10]));
	flip_flop_d b12(.q(q[12]),.d(~q[12]),.reset(reset),.clk(~q[11]));
	flip_flop_d b13(.q(q[13]),.d(~q[13]),.reset(reset),.clk(~q[12]));
	flip_flop_d b14(.q(q[14]),.d(~q[14]),.reset(reset),.clk(~q[13]));
	flip_flop_d b15(.q(q[15]),.d(~q[15]),.reset(reset),.clk(~q[14]));
	flip_flop_d b16(.q(q[16]),.d(~q[16]),.reset(reset),.clk(~q[15]));
	flip_flop_d b17(.q(q[17]),.d(~q[17]),.reset(reset),.clk(~q[16]));

	and And0(reset, q[0], q[8], q[16], q[17]);
	assign clk_128Hz = q[17];
	
endmodule
