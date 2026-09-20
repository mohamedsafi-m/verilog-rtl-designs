`timescale 1ns / 1ps
module multiplier_2bit(P,A,B);
input [1:0]A,B;
output [3:0]P;
wire [2:0]w;
wire [1:0]c;
assign P[0] = A[0] & B[0];
assign w[0] = A[1] & B[0];
assign w[1] = A[0] & B[1];
ha ha0 (P[1],c[0],w[0],w[1]);
assign w[2] = A[1] & B[1];
ha ha1(P[2],c[1],w[2],c[0]);
assign P[3] = c[1];
endmodule
module ha(S,C,A,B);
input A,B;
output S,C;
assign S = A^B;
assign C = A & B;
endmodule