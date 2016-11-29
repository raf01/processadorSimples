module ram(address, dataIn, dataOut, we, rd, clock, reset);
	input reset;
   input [7:0] dataIn;
   input [3:0] address;
   input we, rd, clock;
	reg[7:0] mem[15:0];
	output reg [7:0] dataOut;
	

	
	always @(posedge clock)
	begin
	
		if (reset)
		begin
			mem[0] <= 8'b11110000;
			mem[1] <= 8'b00001111;
			mem[2] <= 8'b00000001;
			mem[3] <= 8'b00000010;
		end
	
		if (we)
		begin
			
			mem[address] <= dataIn;
			
		end
		
		if(rd)
		begin
			
			dataOut <= mem[address];
			
		end
	end

	

endmodule
