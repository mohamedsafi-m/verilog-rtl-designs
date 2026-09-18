`timescale 1ns / 1ps
module tb;
reg A,B,Bin;
wire D,Bout;
full_subtractor uut(
.D(D),
.Bout(Bout),
.A(A),
.B(B),
.Bin(Bin));
initial begin
$monitor ("Time = %0t | A = %b B =%b Bin =%b | D = %b Bout = %b",
$time , A ,B , Bin, D, Bout);
end
initial begin
A = 1'b0 ; B = 1'b0; Bin = 1'b0;
#10;
A = 1'b0 ; B = 1'b0; Bin = 1'b1;
#10;
A = 1'b0 ; B = 1'b1; Bin = 1'b0;
#10;
A = 1'b0 ; B = 1'b1; Bin = 1'b1;
#10;
A = 1'b1 ; B = 1'b0; Bin = 1'b0;
#10;
A = 1'b1 ; B = 1'b0; Bin = 1'b1;
#10;
A = 1'b1 ; B = 1'b1; Bin = 1'b0;
#10;
A = 1'b1 ; B = 1'b1; Bin = 1'b1;
#10;
$finish;
end
endmodule
