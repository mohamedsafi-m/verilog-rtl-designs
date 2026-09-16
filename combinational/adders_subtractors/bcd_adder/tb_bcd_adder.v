    `timescale 1ns / 1ps
    module tb_bcd_adder;
    reg [3:0] A,B;
    reg Cin;
    wire [3:0]S;
    wire Cout;
    bcd_adder uut(
    .S(S),
    .Cout(Cout),
    .A(A),
    .B(B),
    .Cin(Cin)
    );
    initial
    begin
    $monitor("Time = %0t | A=%d B=%d Cin = %b | S = %b Cout = %b",
    $time, A,B,Cin,S,Cout);
    A=4'd0 ; B=4'd9; Cin =0;
    #10;
    A=4'd5 ; B=4'd3; Cin =0;
    #10;
    A=4'd9 ; B=4'd10; Cin =0;
    #10;
    A=4'd5 ; B=4'd5; Cin =0;
    #10;
    A=4'd9 ; B=4'd5; Cin =0;
    #10;
    A=4'd15 ; B=4'd3; Cin =0;
    #10;
    A=4'd8 ; B=4'd9; Cin =0;
    #10;
    A=4'd5 ; B=4'd5; Cin =1;
    #10;
    A=4'd10 ; B=4'd8; Cin =1;
    #10;
    $finish;
    end
    endmodule
