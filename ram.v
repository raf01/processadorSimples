module ram(address, dataIn, dataOut, we, rd, clock);

	// output reg [7:0] ledsSaida;
   input [7:0] dataIn;
   input [3:0] address;
   input we, rd, clock;
   reg [7:0] mem [15:0];
	output reg [7:0] dataOut;
	
	/*mem[0] = 8'b10101010;
	mem[1] = 8'b00001111;
	mem[2] = 8'b00000001;
	mem[3] = 8'b00000010;*/
	
	always @(posedge clock) begin
		if (we)
		begin
			mem[address] <= dataIn;
		end
		if(rd)
		begin
			dataOut <= mem[address];
		end
	//ledsSaida <= mem[address];
	end
endmodule
