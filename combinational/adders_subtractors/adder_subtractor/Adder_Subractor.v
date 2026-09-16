`timescale 1ns / 1ps 
module adder_subractor(S,Cout,A,B,Cin);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;
wire c1,c2,c3;
fa FA0(S[0],c1,A[0],(Cin ^ B[0]),Cin);
fa FA1(S[1],c2,A[1],(Cin ^ B[1]),c1);
fa FA2(S[2],c3,A[2],(Cin ^ B[2]),c2);
fa FA3(S[3],Cout,A[3],(Cin ^ B[3]),c3);
endmodule

module fa(S ,Cout ,A ,B ,Cin);
output S,Cout;
input A,B,Cin;
assign S = A^B^Cin;
assign Cout = (A&B)|(A^B)&Cin;
endmodule


