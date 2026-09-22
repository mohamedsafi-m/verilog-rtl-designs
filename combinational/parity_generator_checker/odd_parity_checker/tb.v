`timescale 1ns / 1ps

module tb;

reg A, B, C, P;
wire OC;

odd_parity_checker uut (
    .OC(OC),
    .A(A),
    .B(B),
    .C(C),
    .P(P)
);

initial begin

    $monitor("Time=%0t | A=%b B=%b C=%b P=%b | OC=%b",
             $time, A, B, C, P,OC);

    A=0; B=0; C=0; P=0; #10;
    A=0; B=0; C=0; P=1; #10;
    A=0; B=0; C=1; P=0; #10;
    A=0; B=0; C=1; P=1; #10;

    A=0; B=1; C=0; P=0; #10;
    A=0; B=1; C=0; P=1; #10;
    A=0; B=1; C=1; P=0; #10;
    A=0; B=1; C=1; P=1; #10;

    A=1; B=0; C=0; P=0; #10;
    A=1; B=0; C=0; P=1; #10;
    A=1; B=0; C=1; P=0; #10;
    A=1; B=0; C=1; P=1; #10;

    A=1; B=1; C=0; P=0; #10;
    A=1; B=1; C=0; P=1; #10;
    A=1; B=1; C=1; P=0; #10;
    A=1; B=1; C=1; P=1; #10;

    $finish;

end

endmodule