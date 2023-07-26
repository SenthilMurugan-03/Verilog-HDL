module Half_Adder_TB;
reg A,B;
wire S,C;
Half_Add uut(A,B,S,C);
initial
begin
A = 0; B = 0;
#10 A = 0; B = 1;
#10 A = 1; B = 0;
#10 A = 1; B = 1;
#10 $finish;
end
endmodule
