`timescale 1ns / 1ps

module full_adder(S,Cout,A,B,Cin);
input A,B,Cin;
output S,Cout;
assign S = A^B^Cin;
assign Cout = (A&B) | (A^B)&Cin;
endmodule
