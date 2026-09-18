`timescale 1ns / 1ps
module Xnor(Y,A,B);
output Y;
input A,B;
assign Y = ~(A ^ B);
endmodule
