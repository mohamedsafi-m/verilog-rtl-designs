`timescale 1ns / 1ps
module even_parity_checker(EC,A,B,C,P);
input A,B,C,P;
output EC;
assign EC = A ^ B ^ C ^ P;
endmodule
