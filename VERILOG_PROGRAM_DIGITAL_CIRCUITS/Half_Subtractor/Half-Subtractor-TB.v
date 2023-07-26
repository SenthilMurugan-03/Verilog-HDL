module Half_Sub_TB;
reg A,B;
wire D,B;
Half_Sub(A,B,D,B);
initial
begin
#10 A = 1'b0 ; B = 1'b0;
#10 A = 1'b0 ; B = 1'b1;
#10 A = 1'b1 ; B = 1'b0;
#10 A = 1'b1 ; B = 1'b1;
#10 $finish;
end
endmodule
