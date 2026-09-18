`timescale 1ns / 1ps
module tb;
reg A;
wire Y;
Not uut(
.Y(Y),
.A(A));
initial
begin
$monitor("Time = %0t | A = %d | Y = %b",
$time, A,Y);
end
initial
begin
A = 1'b0 ; 
#10;
A = 1'b1 ; 
#10;
$finish;
end
endmodule
