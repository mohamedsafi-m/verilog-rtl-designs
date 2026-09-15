`timescale 1ns / 1ps
module tb;
reg A,B;
wire Y;
Or_gate uut(
.Y(Y),
.A(A),
.B(B));
initial
begin
$monitor("Time = %0t | A = %d B=%d | Y = %b",
$time, A,B,Y);
end
initial
begin
A = 1'b0 ; B = 1'b0;
#10;
A = 1'b0 ; B = 1'b1;
#10;
A = 1'b1 ; B = 1'b0;
#10;
A = 1'b1 ; B = 1'b1;
#10;
$finish;
end
endmodule
