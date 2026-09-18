`timescale 1ns / 1ps
module half_subtractor(D,Bout,A,B);
input A,B;
output D,Bout;
assign D = A ^ B;
assign Bout = ~A & B;
endmodule
