`timescale 1ns / 1ps
module even_parity_generator(P,A,B,C);
input A,B,C;
output P;
assign P = A ^ B ^ C;
endmodule
