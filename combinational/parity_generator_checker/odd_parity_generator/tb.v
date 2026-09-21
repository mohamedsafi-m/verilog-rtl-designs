`timescale 1ns / 1ps
module tb;
reg A,B,C;
wire P;
odd_parity_generator uut(
.P(P),
.A(A),
.B(B),
.C(C)
);
initial begin
$monitor("Time = %0t | A = %b B = %b C = %b | P = %b",
$time ,A,B,C,P);
end
initial begin
A = 1'b0 ; B = 1'b0 ; C = 1'b0;
#10;
A = 1'b0 ; B = 1'b0 ; C = 1'b1;
#10;
A = 1'b0 ; B = 1'b1 ; C = 1'b0;
#10;
A = 1'b0 ; B = 1'b1 ; C = 1'b1;
#10;
A = 1'b1 ; B = 1'b0 ; C = 1'b0;
#10;
A = 1'b1 ; B = 1'b0 ; C = 1'b1;
#10;
A = 1'b1 ; B = 1'b1 ; C = 1'b0;
#10;
A = 1'b1 ; B = 1'b1 ; C = 1'b1;
#10;
$finish;
end
endmodule
