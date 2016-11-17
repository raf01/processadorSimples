module processadorSimples(SW, LEDG, LEDR, HEX0, HEX1, HEX2, HEX3, KEY);

input [9:0]SW;
input [3:0]KEY;

output reg [9:0]LEDR;
output reg [7:0]LEDR;

reg [7:0] registradorA;
reg [7:0] registradorB;
reg [7:0] opcode;
reg [7:0] buffer


ULA ula(.regA(registradorA), .regB(registradorB), .opcode(opcode), .clock(~KEY[0]));
MUX mux(.in(SW[7:0]), .seletor(SW[9:8]), .out0(registradorA), .out1(registradorB), .out2(opcode), .out3(buffer), .clock(~KEY[0]));

assign [7:0] LEDR = registradorA;
assign [7:0] LEDR = registradorB;

endmodule
