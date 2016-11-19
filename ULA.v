module ULA (regA, regB, opcode, endereco, clock, saidaULA,enable);

input enable;
input [7:0]regA,regB;
input [3:0]opcode, endereco;
input clock;
output reg saidaULA;

always@(clock)
	begin
		if (enable == 1)
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
			//	4'b1100:
			//		memoria[endereco] = a;
					
			
			endcase
		end
	end


endmodule
