`timescale 1ns / 1ps
module tb;
reg A,B;
wire D,Bout;
half_subtractor uut(
.D(D),
.Bout(Bout),
.A(A),
.B(B));
initial begin 
$monitor ("Time = %0t | A = %b B = %b | D = %b Bout = %b",
$time , A,B,D,Bout);
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

