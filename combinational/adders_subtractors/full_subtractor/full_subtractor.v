`timescale 1ns / 1ps
module full_subtractor(D,Bout,A,B,Bin);
input A,B,Bin;
output D,Bout;
assign D = A^B^Bin;
assign Bout = (~A&B) | ((~(A^B))&Bin);
endmodule
