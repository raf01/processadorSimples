module processadorSimples(SW, LEDG, LEDR,KEY);

input [9:0]SW;
input [3:0]KEY;

output [9:0]LEDG;
output [9:0]LEDR;

wire [7:0] registradorA, tempReg;
wire [7:0] registradorB;
wire [7:0] instructionByte;	//opcode e operando
wire [7:0] saidaULA, dataOutMem, datainMem;
wire [3:0] opcode, operando;
wire rd, we, endMem,enableULA;
wire Variacao;
wire [7:0]barMemoria;


assign opcode[3:0] = instructionByte[7:4];
assign operando[3:0] = instructionByte[3:0];

ULA ula(.regA(registradorA), .regB(registradorB), .opcode(instructionByte[7:4]), .operando(instructionByte[3:0]),
.clock(~KEY[3]), .saidaULA(saidaULA), .enableULA(enableULA));

MUX mux(.in(SW[7:0]), .seletor(SW[9:8]), .out0(registradorA), .out1(registradorB), .out2(instructionByte),
.out3(saidaULA), .clock(~KEY[0]), .enable(~KEY[2]), .ledOutput(ledOutput), .choiceOut(LEDG[7:0]), .variacao2(Variacao), .barramentoMem(barMemoria), .led(LEDR[9:8]));

UnidadeDeControle UC(.opcode(opcode), .operando(operando), .rd(rd),.we(we), .enableULA(enableULA) ,.dataInMem(datainMem),
.dataOutMem(dataOutMem), .regSaidaULA(saidaULA), .ledSaidaMem(LEDR[7:0]),.clock(~KEY[3]), .variacao(Variacao), .barmemoria(barMemoria)); 

ram RAM(.address(operando), .dataIn(datainMem), .dataOut(dataOutMem), .we(we), .rd(rd), .clock(~KEY[0]), .reset(~KEY[1]));



endmodule

