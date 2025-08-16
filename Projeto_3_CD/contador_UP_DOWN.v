// Contador UP/DOWN Controlado por 2 Botões
module contador_UP_DOWN(MAIS, MENOS, B2, B1, B0, CLK);
	input MAIS, MENOS, CLK;
	output B2, B1, B0;
	
	// Intertravamento das Entradas
	and Mais (UP, MAIS, ~MENOS); 
	and Menos (DO, MENOS, ~MAIS);
	
	controle_contador_UPDO ctrl(
		.UP(UP), 
		.DO(DO), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.n_Q0(n_Q0), 
		.n_Q1(n_Q1), 
		.n_Q2(n_Q2),
		.D0(D0), 
		.D1(D1), 
		.D2(D2)
	);
	
	// Flip_Flops
	flip_flop_d b0(.q(Q0), .d(D0), .q_n(n_Q0), .reset(), .clk(CLK));
	flip_flop_d b1(.q(Q1), .d(D1), .q_n(n_Q1), .reset(), .clk(CLK));
	flip_flop_d b2(.q(Q2), .d(D2), .q_n(n_Q2), .reset(), .clk(CLK));
	
	// Saidas
	assign B0 = Q0;
	assign B1 = Q1;
	assign B2 = Q2;
	
endmodule

module controle_contador_UPDO(UP, DO, Q0, Q1, Q2, n_Q0, n_Q1, n_Q2,
D0, D1, D2);
	input UP, DO, Q0, Q1, Q2;
	input n_Q0, n_Q1,  n_Q2;
	output D0, D1, D2;
	
	// Negação das Entradas
	not not_UP (n_UP, UP);
	not not_DO (n_DO, DO);
	
	// Combinacional do Flip Flop 0
	and D0_And0 (a0_d0, n_UP, n_DO, QO);
	and D0_And1 (a1_d0, DO, Q1, n_Q0);
	and D0_And2 (a2_d0, DO, Q2,n_Q0);
	and D0_And3 (a3_d0, UP, n_QO);
	and D0_And4 (a4_d0, UP, Q2, Q1);
	or D0_Or (D0, a0_d0, a1_d0, a2_d0, a3_d0, a4_d0);
	
	// Combinacional do Flip Flop 1
	and D1_And0 (a0_d1, DO, Q2, n_Q1, n_Q0);
	and D1_And1 (a1_d1, UP, n_Q1, Q0);
	and D1_And2 (a2_d1, n_UP, Q1, Q0);
	and D1_And3 (a3_d1, n_DO, Q1, n_Q1);
	and D1_And4 (a4_d1, n_DO, Q2, Q1);
	or D1_Or (D1, a0_d1, a1_d1, a2_d1, a3_d1, a4_d1);

	// Combinacional do Flip Flop 2
	and D2_And0 (a0_d2, n_DO, Q2);
	and D2_And1 (a1_d2, Q2, Q0);
	and D2_And2 (a2_d2, Q2, Q1);
	and D2_And3 (a3_d2, UP, Q1, Q0);
	or D2_Or (D2, a0_d2, a1_d2, a2_d2, a3_d2);
	
endmodule


