module UnidadeDeControle(
	input [3:0] opcode,
	input [3:0] operando,
	output reg rd,
	output reg we,
	output reg [7:0] dataInMem,
	input [7:0] dataOutMem,
	output reg clockRAM,
	input [7:0] regSaidaULA,
	output reg [3:0] endMem,
	input [7:0] regA,
	output reg [7:0] tempRegA,
	output reg flagUC
	);

	time i = 0;
	
always @(opcode)
begin

	rd = 1'b0;
	we = 1'b0;

	case(opcode)
		4'b1100:
			begin
				//ULA nao realiza nada. Unidade de Controle captura registrador de saida da ULA e salva na memoria RAM.
				dataInMem = regSaidaULA;
				rd = 1'b0;
				we = 1'b1;
			end
		4'b1101:
			// Unidade de Controle salva conteudo do endereco de memoria para o registrador A.
			begin
				flagUC = 0;
				endMem = operando;
				rd = 1'b1;
				we = 1'b0;
				clockRAM = ~clockRAM;
				clockRAM = ~clockRAM;
				tempRegA = dataOutMem;
				flagUC = 1;
				for( i = 0; i <= 10000000; i = i + 1) 
					flagUC = flagUC;
				flagUC = 0;
			end
	endcase
end 

//assign opcode[3:0] = instructionByte[7:4];
//assign operando[3:0] = instructionByte[3:0];

endmodule 