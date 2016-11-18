module ULA (a, b, opcode, endereco, clock, saidaULA, enable, memoria);
input enable;
input [7:0]a,b;
input [3:0]opcode;
input [3:0]endereco;
input clock;
output reg[7:0]saidaULA;
output reg [7:0]memoria[15:0];

	
	always@(clock)
	begin
		if (enable == 1)begin
			case (opcode)
				4'b0000:
					saidaULA = 0;
				4'b0001:
					saidaULA = a + b;
				4'b0010:
					saidaULA = a - b;
				4'b0011:
					saidaULA = a * b;
				4'b0100:
					saidaULA = a / b;
				4'b0101:
					saidaULA = a & b;
				4'b0110:
					saidaULA = a | b;
				4'b0111:
					saidaULA = ~a;
				4'b1000:
					saidaULA = a ^ b;
				4'b1001:
					saidaULA = a ~^ b;
				4'b1010:
					saidaULA = a; // Armazena o conteudo de a na saida da ULA
				4'b1011:
					saidaULA = ~a;
				4'b1100:
					memoria[endereco] = a;
					
			
			endcase
		end
	end

endmodule

