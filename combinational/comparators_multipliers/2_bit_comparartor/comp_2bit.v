`timescale 1ns / 1ps
module comp_2bit(EQ,LS,GR,A,B);
input [1:0]A,B;
output EQ,LS,GR;
assign EQ = (~(A[1] ^ B[1])) & (~(A[0] ^ B[0]));
assign LS = (~A[1] & B[1]) | ((~(A[1] ^ B[1]))&(~A[0] & B[0]));
assign GR = (A[1] & ~B[1]) | ((~(A[1] ^ B[1]))&(A[0] & ~B[0]));
endmodule
