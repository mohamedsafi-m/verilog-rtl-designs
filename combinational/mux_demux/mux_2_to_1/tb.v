`timescale 1ns / 1ps

module tb;

reg [1:0] I;
reg S;
wire Y;

mux_2_to_1 uut (
    .Y(Y),
    .I(I),
    .S(S)
);

initial begin

    $monitor("Time = %0t | I = %b S = %b | Y = %b",
             $time, I, S, Y);

    I = 2'b00; S = 0;
    #10;

    I = 2'b01; S = 0;
    #10;

    I = 2'b10; S = 0;
    #10;

    I = 2'b11; S = 0;
    #10;

    I = 2'b00; S = 1;
    #10;

    I = 2'b01; S = 1;
    #10;

    I = 2'b10; S = 1;
    #10;

    I = 2'b11; S = 1;
    #10;

    $finish;

end

endmodule