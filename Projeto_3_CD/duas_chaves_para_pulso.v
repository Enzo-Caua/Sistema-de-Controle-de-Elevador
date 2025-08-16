module duas_chaves_para_pulso (
    input wire clk,       // Clock do sistema
    input wire reset,     // Sinal de reset síncrono
    input wire chave,     // Sinal de entrada (chave on/off)
    output reg pulso      // Sinal de saída (pulso)
);

    reg chave_ant; // Registro para armazenar o estado anterior da chave

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            chave_ant <= 1'b0; // Reset do estado anterior
            pulso <= 1'b0;     // Reset do pulso
        end else begin
            // Detecta borda de subida da chave (0 -> 1)
            if (chave && !chave_ant) begin
                pulso <= 1'b1; // Gera um pulso
            end else begin
                pulso <= 1'b0; // Mantém o pulso desligado
            end

            // Atualiza o estado anterior da chave
            chave_ant <= chave;
        end
    end

endmodule
