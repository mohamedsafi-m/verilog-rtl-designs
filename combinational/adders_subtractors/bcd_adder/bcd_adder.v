`timescale 1ns / 1ps
module bcd_adder(S,Cout,A,B,Cin);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;
wire c0,c1,c2,c3,c4,c5,c6,s0,s1,s2,s3,b;
fa fa0(s0,c0,A[0],B[0],Cin);
fa fa1(s1,c1,A[1],B[1],c0);
fa fa2(s2,c2,A[2],B[2],c1);
fa fa3(s3,c3,A[3],B[3],c2);
assign b = s3 & (s2|s1) | c3;
fa fa4(S[0],c4,s0,0,0);
fa fa5(S[1],c5,s1,b,c4);
fa fa6(S[2],c6,s2,b,c5);
fa fa7(S[3],Cout,s3,0,c6);
endmodule
module fa(S,Cout,A,B,Cin);
input A,B,Cin;
output S,Cout;
xor(S,A,B,Cin);
or(Cout,A&B,Cin&(A^B));
endmodule
