module UnidadeDeControle(
	input [3:0] opcode,
	input [3:0] operando,
	output reg rd,
	output reg we,
	output reg enableULA,
	output reg [7:0] dataInMem,
	input [7:0] dataOutMem,
	input [7:0] regSaidaULA,
	output reg [7:0]ledSaidaMem,
	input clock,
	output reg variacao,
	output reg[7:0]barmemoria
	);
	

always @(posedge clock)
begin		
		variacao <= 1'b0;
		rd <= 1'b0;
		we <= 1'b0;
		enableULA <= 1'b0;
		case(opcode)
			4'b0000:
				enableULA <= 1'b1;
			4'b0001:
				enableULA <= 1'b1;
			4'b0010:
				enableULA <= 1'b1;
			4'b0011:
				enableULA <= 1'b1;
			4'b0100:
				enableULA <= 1'b1;
			4'b0101:
				enableULA <= 1'b1;
			4'b0110:
				enableULA <= 1'b1;
			4'b0111:
				enableULA <= 1'b1;	
			4'b1000:
				enableULA <= 1'b1;	
			4'b1001:
				enableULA <= 1'b1;	
			4'b1010:
				enableULA <= 1'b1;	
			4'b1011:
				enableULA <= 1'b1;
			4'b1100:
				begin
					//ULA nao realiza nada. Unidade de Controle captura registrador de saida da ULA e salva na memoria RAM.
					rd <= 1'b0;
					we <= 1'b1;
					dataInMem = regSaidaULA;
					
				end
			4'b1101:
				// Unidade de Controle mostra o conteudo da memoria nos leds vermelhos.
				begin
					rd <= 1'b1;
					we <= 1'b0;
					ledSaidaMem = dataOutMem;
				end
			4'b1110:
				// Joga o conteudo da memoria ram no registrador A.
				begin
				variacao <= 1'b1;
				rd <= 1'b1;
				barmemoria = dataOutMem;
				end
		endcase
	
end 

endmodule
