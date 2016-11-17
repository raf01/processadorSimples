module MUX(in, seletor, out0, out1, out2, out3, clock);

always@(posedge clock)
begin
	case(seletor)
		0:
			out0 = in;
		1:
			out1 = in;
		2:
			out2 = in;
		3:
			out3 = in;
	endcase
end

endmodule
