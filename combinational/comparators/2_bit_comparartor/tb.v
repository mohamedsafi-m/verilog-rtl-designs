`timescale 1ns / 1ps

module tb;

reg [1:0] A, B;
wire EQ, LS, GR;

comp_2bit uut (
    .EQ(EQ),
    .LS(LS),
    .GR(GR),
    .A(A),
    .B(B)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b | EQ=%b LS=%b GR=%b",
             $time, A, B, EQ, LS, GR);

    A = 2'b00; B = 2'b00;
    #10;

    A = 2'b00; B = 2'b01;
    #10;

    A = 2'b00; B = 2'b10;
    #10;

    A = 2'b00; B = 2'b11;
    #10;

    A = 2'b01; B = 2'b00;
    #10;

    A = 2'b01; B = 2'b01;
    #10;

    A = 2'b01; B = 2'b10;
    #10;

    A = 2'b01; B = 2'b11;
    #10;

    A = 2'b10; B = 2'b00;
    #10;

    A = 2'b10; B = 2'b01;
    #10;

    A = 2'b10; B = 2'b10;
    #10;

    A = 2'b10; B = 2'b11;
    #10;

    A = 2'b11; B = 2'b00;
    #10;

    A = 2'b11; B = 2'b01;
    #10;

    A = 2'b11; B = 2'b10;
    #10;

    A = 2'b11; B = 2'b11;
    #10;
$finish;
end
endmodule