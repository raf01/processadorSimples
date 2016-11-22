module ram(address, dataIn, dataOut, we, rd, clock, ledDataOut);

	// output reg [7:0] ledsSaida;
   input [7:0] dataIn;
   input [3:0] address;
   input we, rd, clock;
   reg [7:0] mem [15:0];
	output reg [3:0] dataOut;
	output [2:0] ledDataOut;

	initial
	begin
		mem[0] = 8'b10101010;
		mem[1] = 8'b00001111;
		mem[2] = 8'b00000001;
		mem[3] = 8'b00000010;
	end
	
	always @(posedge clock)
	begin
	
		dataOut <= 4'b00000001;
	
		if (we)
		begin
			mem[address] <= dataIn;
			dataOut <= 4'b0011;
		end
		
		if(rd)
		begin
			dataOut <= mem[address];
			dataOut <= 4'b0111;
		end
	end

	assign ledDataOut = dataOut;

endmodule
