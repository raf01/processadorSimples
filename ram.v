module ram(address, dataIn, dataOut, we, rd, clock/*ledDataOut*/);

	// output reg [7:0] ledsSaida;
   input [7:0] dataIn;
   input [3:0] address;
   input we, rd, clock;
	
    reg[7:0] mem[15:0];
	output reg [7:0] dataOut;
	//output reg[7:0] ledDataOut;

	//assign mem[0000] = 8'b10101010;
	/*initial
	begin
		mem[0000] = 8'b10101010;
		mem[0001] = 8'b00001111;
		mem[0010] = 8'b00000001;
		mem[0011] = 8'b00000010;
	end*/
	
	//olhar se ta entrando no datain
	
	
	always @(clock)
	begin
	
		//dataOut <= 4'b00000001;
	
		if (we)
		begin
			//ledDataOut = dataIn;
			mem[address] <= dataIn;
			//dataOut <= 4'b0011;
			
		end
		
		if(rd)
		begin
			if(address == 0)begin
			mem[address] <= 8'b11110011;
			end
			dataOut <= mem[address];
			//dataOut <= 4'b0111;
		end
	end

	//assign ledDataOut = dataOut;

endmodule
