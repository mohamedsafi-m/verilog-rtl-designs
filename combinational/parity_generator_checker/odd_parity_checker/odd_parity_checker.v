`timescale 1ns / 1ps
module odd_parity_checker(OC,A,B,C,P);
input A,B,C,P;
output OC;
assign OC = ~(A ^ B ^ C ^ P);
endmodule
