module MUX(in, seletor, out0, out1, out2, out3, clock, enable, ledOutput, choiceOut, tempRegA, flagUC);
//module MUX(in, seletor, out0, out1, out2, out3, clock, enable);

input [7:0]in, tempRegA;
input [1:0]seletor;
input clock, enable, flagUC;
output reg [7:0]out0, out1, out2;
input [7:0] out3;
output reg [7:0] choiceOut, ledOutput;

always@(posedge clock or posedge flagUC)	//https://www.altera.com/support/support-resources/knowledge-base/solutions/rd06242003_6128.html
begin													//Explicaçao do erro que estava ocorrendo
	if(flagUC)
	begin
		out0 = tempRegA;
	end
	else
	begin
	if(enable)
	begin
		case(seletor)
			0:
				out0 = in;	//registrador A
			1:
				out1 = in;	//registrador B
			2:
				out2 = in;	//opcode
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
	end
	ledOutput = in;
	
end

endmodule
