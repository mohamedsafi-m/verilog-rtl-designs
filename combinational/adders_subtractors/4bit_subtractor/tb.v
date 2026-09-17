`timescale 1ns / 1ps
module tb;
reg [3:0]A,B;
reg Cin;
wire [3:0]S;
wire Cout;
subtractor_4bit DUT(
.S(S),
.Cout(Cout),
.A(A),
.B(B),
.Cin(Cin));
initial begin
$monitor("Time = %0t | A =%d B = %d Cin = %b | S = %b Cout %b",
$time ,A,B,Cin,S,Cout);
end
initial
begin
A = 4'd1 ; B  = 4'd0 ;Cin = 1'b1;
#10;
A = 4'd10 ; B  = 4'd5 ;Cin = 1'b1;
#10;
A = 4'd9 ; B  = 4'd5 ;Cin = 1'b1;
#10;
A = 4'd7 ; B  = 4'd4 ;Cin = 1'b1;
#10;
A = 4'd15 ; B  = 4'd13 ;Cin = 1'b1;
#10;
A = 4'd11 ; B  = 4'd10 ;Cin = 1'b1;
#10;
A = 4'd1 ; B  = 4'd1 ;Cin = 1'b1;
#10;
A = 4'd1 ; B  = 4'd0 ;Cin = 1'b1;
#10;
A = 4'd1 ; B  = 4'd0 ;Cin = 1'b1;
#10;
$finish;
end
endmodule
