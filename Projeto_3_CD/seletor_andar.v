module seletor_andar(T0, T1, P0, P1, S0, S1, A1, A0, CT, CP, CS);
	input T0, P0, S0; // Chamada Internas
	input T1, P1, S1; // Chamadas Externas
	input A1, A0; // Indicadores de Andar
	output CT, CP, CS; // Indicador de Chamadas
	
	// Negação das Entradas
	not not_T0 (n_T0, T0);
	not not_T1 (n_T1, T1);
	not not_P0 (n_P0, P0);
	not not_P1 (n_P1, P1);
	not not_S0 (n_S0, S0);
	not not_S1 (n_S1, S1);
	
	assign T_in = T0;
	assign T_out = T1;
	assign P_in = P0;
	assign P_out = P1;
	assign S_in = S0;
	assign S_out = S1;
	
	// Seleciona as Chamadas
	or or_Terreo (CT1, T_in, T_out);
	or or_Primeiro (CP1, P_in, P_out);
	
	or or_Segundo (CS1, S_in, S_out);
	
	or or_Terreo0 (CT0, n_T0, n_T1);
	or or_Primeiro0 (CP0, n_P0, n_P1);
	or or_Segundo0 (CS0, n_S0, n_S1);
	
	or cts (CT, CT0, CT1);
	or cps (CP, CP, CP1);
	or css (CS, CS0, CS1);
	
	
	
endmodule	
