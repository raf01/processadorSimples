module UnidadeDeControle(
	input [3:0] opcode,
	input [3:0] operando,
	output reg rd,
	output reg we,
	output reg [7:0] dataInMem,
	input [7:0] dataOutMem,
	input [7:0] regSaidaULA,
	output reg [3:0] endMem,
	input [7:0] regA,
	//output reg [7:0]regSaidaMem,
	input enable,
	input clock,
	output [4:0]ledDataOut
	);


	time count = 0;

	output reg [3:0] dataOut;
	
always @(clock)
begin
	
	debugger <= opcode;
	
	count = count + 1;
	
	if(count == 10000000)
	begin
	
		
		
		count = 0;
		
		rd = 1'b0;
		we = 1'b0;

		case(opcode)
			4'b1100:
				begin
					//ULA nao realiza nada. Unidade de Controle captura registrador de saida da ULA e salva na memoria RAM.
					dataInMem = regSaidaULA;
					rd = 1'b0;
					we = 1'b1;
					debugger <= 4'b1100;
				end
			4'b1101:
				// Unidade de Controle salva conteudo do endereco de memoria para o registrador A.
				begin
					endMem = operando;
					rd = 1'b1;
					we = 1'b0;
					//regSaidaMem = dataOutMem;
					
				end
		endcase
	end
end 

//assign opcode[3:0] = instructionByte[7:4];
//assign operando[3:0] = instructionByte[3:0];

assign ledsDebugger[4:1] = debugger;

endmodule
