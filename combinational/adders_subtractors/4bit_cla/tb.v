`timescale 1ns / 1ps
module tb;
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;
cla_4bit uut(
    .S(S),
    .Cout(Cout),
    .A(A),
    .B(B),
    .Cin(Cin)
);
initial begin
$monitor("Time = %0t | A=%d B=%d Cin=%b | S=%b Cout=%b",
$time, A, B, Cin, S, Cout);
end
initial begin
A = 4'd0;  B = 4'd10; Cin = 1'b0;
#10;
A = 4'd3;  B = 4'd5;  Cin = 1'b0;
#10;
A = 4'd7;  B = 4'd2;  Cin = 1'b0;
#10;
A = 4'd9;  B = 4'd6;  Cin = 1'b0;
#10;
A = 4'd15; B = 4'd1;  Cin = 1'b0;
#10;
A = 4'd5;  B = 4'd3;  Cin = 1'b1;
#10;
A = 4'd8;  B = 4'd7;  Cin = 1'b1;
#10;
A = 4'd15; B = 4'd15; Cin = 1'b0;
#10;
A = 4'd15; B = 4'd15; Cin = 1'b1;
#10;
A = 4'd0;  B = 4'd0;  Cin = 1'b1;
#10;
$finish;
end
endmodule