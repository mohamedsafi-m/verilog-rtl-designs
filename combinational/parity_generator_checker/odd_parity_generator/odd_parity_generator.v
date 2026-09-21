`timescale 1ns / 1ps
module odd_parity_generator(P,A,B,C);
input A,B,C;
output P;
wire w1;
xor(w1,A,B,C);
not(P,w1);
endmodule
