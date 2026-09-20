`timescale 1ns / 1ps
module comp(EQ,LS,GR,A,B);
input A,B;
output EQ,LS,GR;
xnor(EQ,A,B);
and(LS,~A,B);
and(GR,A,~B);
endmodule
