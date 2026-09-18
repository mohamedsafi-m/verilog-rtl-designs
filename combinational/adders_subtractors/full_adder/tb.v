`timescale 1ns / 1ps
module tb;
reg A,B,Cin;
wire S,Cout;
full_adder UUT(
.S(S),
.Cout(Cout),
.A(A),
.B(B),
.Cin(Cin));
initial begin
$monitor ("Time = %0t | A = %b B =%b Cin = %b | S = %b Cout = %b",
$time ,A,B,Cin,S,Cout);
end
initial
begin
A= 1'b0 ; B = 1'b0; Cin=1'b0;
#10;
A= 1'b0 ; B = 1'b0; Cin=1'b1;
#10;
A= 1'b0 ; B = 1'b1; Cin=1'b0;
#10;
A= 1'b0 ; B = 1'b1; Cin=1'b1;
#10;
A= 1'b1 ; B = 1'b0; Cin=1'b0;
#10;
A= 1'b1 ; B = 1'b0; Cin=1'b1;
#10;
A= 1'b1 ; B = 1'b1; Cin=1'b0;
#10;
A= 1'b1 ; B = 1'b1; Cin=1'b1;
#10;
$finish;
end
endmodule
