module processadorSimples(SW, LEDG, LEDR, HEX0, HEX1, HEX2, HEX3, KEY);

input [9:0]SW;
input [3:0]KEY;
input HEX0, HEX1, HEX2, HEX3;

output [9:0]LEDG;
output [7:0]LEDR;

wire [7:0] registradorA;
wire [7:0] registradorB;
wire [7:0] opend;
wire [7:0] buffer;
reg [7:0]memoria [15:0];
reg [7:0]mem [15:0];
wire [7:0]Fiomem [15:0];

assign LEDG[7:0] = registradorA;
assign LEDR[7:0] = registradorB;

assign opcode[3:0] = opend[3:0];
assign endereco[3:0] = opend[7:4]; 

//assign opcode [3:0] = SW[7:4];

ULA ula(.a(registradorA), .b(registradorB), .opcode(opcode), .endereco(endereco), .clock(~KEY[0]) ,.saidaULA(buffer), .enable(~KEY[1]));
MUX mux(.in(SW[7:0]), .seletor(SW[9:8]), .out0(registradorA), .out1(registradorB), .out2(opcode), .out3(buffer), .CLOCK(~KEY[0]));
ram mram(.address(endereco), .dataIn(registradorA), .writeEnable(~KEY[2]), .clock(clock));



endmodule
