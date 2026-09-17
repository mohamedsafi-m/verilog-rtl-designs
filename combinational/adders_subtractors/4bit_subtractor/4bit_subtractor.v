`timescale 1ns / 1ps
module subtractor_4bit(S,Cout,A,B,Cin);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;
wire [2:0]c;
fa FA0(S[0],c[0],A[0],~B[0],Cin);
fa FA1(S[1],c[1],A[1],~B[1],c[0]);
fa FA2(S[2],c[2],A[2],~B[2],c[1]);
fa FA3(S[3],Cout,A[3],~B[3],c[2]);

endmodule
module fa(S,Cout,A,B,Cin);
input A,B,Cin;
output S,Cout;
assign S = A^B^Cin;
assign Cout = (A & B) | ((A^B) & Cin);
endmodule
