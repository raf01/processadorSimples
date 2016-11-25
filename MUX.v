module MUX(in, seletor, out0, out1, out2, out3, clock, enable, ledOutput, choiceOut, variacao2, barramentoMem, led);
//module MUX(in, seletor, out0, out1, out2, out3, clock, enable);

input [7:0]in;
input [1:0]seletor;
input clock, enable;
output reg [7:0]out0, out1, out2;
input [7:0] out3;
output reg [7:0] choiceOut, ledOutput;
input variacao2;
input [7:0]barramentoMem;
output reg [1:0]led;

always@(posedge clock)	//https://www.altera.com/support/support-resources/knowledge-base/solutions/rd06242003_6128.html
begin													//Explicaçao do erro que estava ocorrendo

	if(enable)
	begin
		case(seletor)
			0:begin
					//led = variacao2;
					if(variacao2 == 1)
						out0 = barramentoMem;
						else
						out0 = in;	//registrador A
					end
			1:
				out1 = in;	//registrador B
			2:
				out2 = in;	//instructionByte
		endcase
	end
	
	case(seletor)
		0:
			choiceOut = out0;	//registrador A
		1:
			choiceOut = out1;	//registrador B
		2:
			choiceOut = out2;	//opcode
		3:
			choiceOut = out3;	//buffer
	endcase
	
	ledOutput = in;
	
end

endmodule
