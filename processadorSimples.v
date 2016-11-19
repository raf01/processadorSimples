module processadorSimples(SW, LEDG, LEDR, HEX0, HEX1, HEX2, HEX3, KEY);

input [9:0]SW;
input [3:0]KEY;
input HEX0, HEX1, HEX2, HEX3;

output [9:0]LEDG;
output [7:0]LEDR;

wire [7:0] registradorA;
wire [7:0] registradorB;
wire [7:0] opend;	//opcode e endereco
wire [7:0] buffer;
wire [3:0] opcode,endereco;
wire rd,we;
assign opcode[3:0] = opend[7:4];
assign endereco[3:0] = opend[3:0];

//assign LEDG[7:0] = registradorA;
//assign LEDR[7:0] = registradorB;


ULA ula(.regA(registradorA), .regB(registradorB), .opcode(opcode), .endereco(endereco) , .clock(~KEY[0]) , .saidaULA(buffer), .enable(~KEY[1]));
MUX mux(.in(SW[7:0]), .seletor(SW[9:8]), .out0(registradorA), .out1(registradorB), .out2(opcode), .out3(buffer), .clock(~KEY[0]));
UC UnidadeDeControle(.opcode(opcode),.rd(rd),.we(rd));


endmodule
