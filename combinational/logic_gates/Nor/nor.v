`timescale 1ns / 1ps
module Nor(Y,A,B);
output Y;
input A,B;
assign Y =~(A | B);
endmodule
