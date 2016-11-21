module processadorSimples(SW, LEDG, LEDR, HEX0, HEX1, HEX2, HEX3, KEY);

input [9:0]SW;
input [3:0]KEY;
output [7:0] HEX0, HEX1, HEX2, HEX3;

output [9:0]LEDG;
output [7:0]LEDR;

wire [7:0] registradorA, tempRegA;
wire [7:0] registradorB;
wire [7:0] instructionByte;	//opcode e operando
wire [7:0] saidaULA, dataOutMem, datainMem;
wire [3:0] opcode, operando;
wire rd, we, clockRAM, endMem, flagUC;

assign opcode[3:0] = instructionByte[7:4];
assign operando[3:0] = instructionByte[3:0];

ULA ula(.regA(registradorA), .regB(registradorB), .opcode(instructionByte[7:4]), .operando(instructionByte[3:0]),
.clock(~KEY[0]), .saidaULA(saidaULA), .enable(~KEY[1]));

MUX mux(.in(SW[7:0]), .seletor(SW[9:8]), .out0(registradorA), .out1(registradorB), .out2(instructionByte),
.out3(saidaULA), .clock(~KEY[0]), .enable(~KEY[2]), .ledOutput(LEDR[7:0]), .choiceOut(LEDG[7:0]), .tempRegA(tempRegA), .flagUC(flagUC));

UnidadeDeControle UC(.opcode(opcode), .operando(operando), .rd(rd),.we(we), .dataInMem(datainMem),
.dataOutMem(dataOutMem), .clockRAM(clockRAM), .regSaidaULA(saidaULA), .endMem(endMem), .regA(registradorA),
.tempRegA(tempRegA), .flagUC(flagUC));

ram RAM(.address(endMem), .dataIn(datainMem), .dataOut(dataOutMem), .we(we), .rd(rd), .clock(clockRAM));

endmodule

