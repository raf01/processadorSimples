module ram(address, dataIn, dataOut, we, rd, clock, reset, led /*ledDataOut*/);
	input reset;
   input [7:0] dataIn;
   input [3:0] address;
   input we, rd, clock;
	reg[7:0] mem[15:0];
	output reg [7:0] dataOut;
	output reg [1:0]led;
	//output reg[7:0] ledDataOut;
	/*initial
	begin
		mem[0000] = 8'b10101010;
		mem[0001] = 8'b00001111;
		mem[0010] = 8'b00000001;
		mem[0011] = 8'b00000010;
	end*/
	
	//olhar se ta entrando no datain
	
	always @(posedge clock)
	begin

		led[0] <= we;
		led[1] <= rd;
	
		if (reset)
		begin
			mem[0] <= 8'b11110000;
			mem[1] <= 8'b00001111;
			mem[2] <= 8'b00000001;
			mem[3] <= 8'b00000010;
		end
	
		if (we)
		begin
			//ledDataOut = dataIn;
			mem[address] <= dataIn;
			//dataOut <= 4'b0011;
		end
		
		if(rd)
		begin
			//if(address == 0)begin
			//mem[address] <= 8'b11110011;
			//end
			dataOut <= mem[address];
			//dataOut <= 4'b0111;
		end
	end

	//assign ledDataOut = dataOut;

endmodule
