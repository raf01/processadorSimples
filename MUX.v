module MUX(in, seletor, out0, out1, out2, out3, CLOCK);

input [7:0]in;
input [1:0]seletor;
input CLOCK;
output reg [7:0]out0, out1, out2,out3;

always@(posedge CLOCK)
begin
	case(seletor)
		0:
			out0 = in;	//registrador A
		1:
			out1 = in;	//registrador B
		2:
			out2 = in;	//opcode
		3:
			out3 = in;	//buffer
	endcase
end

endmodule
