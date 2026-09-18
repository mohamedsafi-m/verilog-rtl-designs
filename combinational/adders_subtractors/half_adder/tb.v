`timescale 1ns / 1ps
module tb;
reg A,B;
wire S,C;
half_adder uut(
.S(S),
.C(C),
.A(A),
.B(B));
initial begin 
$monitor ("Time = %0t | A = %b B = %b | S = %b C = %b",
$time , A,B,S,C);
end
initial begin
A = 1'b0; B = 1'b0 ;
#10;
A = 1'b0; B = 1'b1 ;
#10;
A = 1'b1; B = 1'b0 ;
#10;
A = 1'b1; B = 1'b1 ;
#10;
$finish;
end
endmodule
