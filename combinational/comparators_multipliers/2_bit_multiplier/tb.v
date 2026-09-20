`timescale 1ns / 1ps

module tb;

reg [1:0] A, B;
wire [3:0] P;

multiplier_2bit uut (
    .A(A),
    .B(B),
    .P(P)
);

initial begin
$monitor("Time=%0t | A=%d B=%d | P=%d",
$time, A, B, P);
end
initial begin
    A = 2'b00; B = 2'b00; #10;
    A = 2'b00; B = 2'b01; #10;
    A = 2'b00; B = 2'b10; #10;
    A = 2'b00; B = 2'b11; #10;

    A = 2'b01; B = 2'b00; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b01; B = 2'b11; #10;

    A = 2'b10; B = 2'b00; #10;
    A = 2'b10; B = 2'b01; #10;
    A = 2'b10; B = 2'b10; #10;
    A = 2'b10; B = 2'b11; #10;

    A = 2'b11; B = 2'b00; #10;
    A = 2'b11; B = 2'b01; #10;
    A = 2'b11; B = 2'b10; #10;
    A = 2'b11; B = 2'b11; #10;

    $finish;

end

endmodule