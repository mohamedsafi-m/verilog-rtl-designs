`timescale 1ns / 1ps
module mux_4_to_1(Y,I,S);
input [3:0]I;
input [1:0]S;
output Y;
assign Y = ((I[0] & ~S[1] & ~S[0]) | (I[1] & ~S[1] & S[0]) | (I[2] & S[1] & ~S[0]) | (I[3] & S[1] & S[0]));
endmodule
