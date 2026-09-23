`timescale 1ns / 1ps

module tb;

reg [3:0] I;
reg [1:0] S;
wire Y;

mux_4_to_1 uut (
    .Y(Y),
    .I(I),
    .S(S)
);

initial begin

    $monitor("Time = %0t | I = %b S = %b | Y = %b",
             $time, I, S, Y);

    // S = 00 -> Y = I[0]
    I = 4'b1001; S = 2'b00;
    #10;

    I = 4'b0011; S = 2'b00;
    #10;

    I = 4'b0100; S = 2'b00;
    #10;

    I = 4'b0101; S = 2'b00;
    #10;


    // S = 01 -> Y = I[1]
    I = 4'b1000; S = 2'b01;
    #10;

    I = 4'b0001; S = 2'b01;
    #10;

    I = 4'b0111; S = 2'b01;
    #10;

    I = 4'b0001; S = 2'b01;
    #10;


    // S = 10 -> Y = I[2]
    I = 4'b1000; S = 2'b10;
    #10;

    I = 4'b0110; S = 2'b10;
    #10;

    I = 4'b1000; S = 2'b10;
    #10;

    I = 4'b0111; S = 2'b10;
    #10;


    // S = 11 -> Y = I[3]
    I = 4'b0110; S = 2'b11;
    #10;

    I = 4'b0000; S = 2'b11;
    #10;

    I = 4'b0100; S = 2'b11;
    #10;

    I = 4'b0011; S = 2'b11;
    #10;

    $finish;

end
endmodule