module tb;
reg A,B;
wire EQ,LS,GR;
comp call(
.EQ(EQ),
.LS(LS),
.GR(GR),
.A(A),
.B(B));
initial
begin
$monitor("Time = 0%t | A =%b B =%b |EQ = %b GR =%b,LS =%b",
$time , A,B,EQ,LS,GR);
end
initial begin
A = 1'b0 ; B = 1'b0;
#10;
A = 1'b0 ; B = 1'b1;
#10;
A = 1'b1 ; B = 1'b0;
#10;
A = 1'b1 ; B = 1'b1;
#10;
$finish;
end
endmodule