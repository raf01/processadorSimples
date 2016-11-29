module ULA (regA, regB, opcode, operando, clock, saidaULA,enableULA);

input enableULA, clock;
input [7:0] regA, regB;
input [3:0]opcode, operando;
output reg [7:0] saidaULA;

always@(posedge clock)
	begin
		if (enableULA)
		begin
			case (opcode)
				4'b0000:
					saidaULA = 0;
				4'b0001:
					saidaULA = regA + regB;
				4'b0010:
					saidaULA = regA - regB;
				4'b0011:
					saidaULA = regA * regB;
				4'b0100:
					saidaULA = regA / regB;
				4'b0101:
					saidaULA = regA & regB;
				4'b0110:
					saidaULA = regA | regB;
				4'b0111:
					saidaULA = ~regA;
				4'b1000:
					saidaULA = regA ^ regB;
				4'b1001:
					saidaULA = regA ~^ regB;
				4'b1010:
					saidaULA = regA; // Armazena o conteudo de a na saida da ULA
				4'b1011:
					saidaULA = regB;
				//4'b1100:
					//ULA nao realiza nada. Unidade de Controle captura registrador de saida da ULA e salva na memoria RAM.
				//4'b1101:
	
					//ULA nao realiza nada. Unidade de Controle salva conteudo do endereco de memoria para o registrador A.
				//4'1110:
					// Joga o conteudo da memoria ram no registrador A.
				//4'1111:
					
			endcase
		end
	end


endmodule
