module Four_Bit_Comparator_TB;
reg A,B;
wire E,L,G;
module Four_Bit_Comparator(A,B,E,L,G);
initial
begin

#10 A = 1'b0; B = 1'b0;
#10 A = 1'b0; B = 1'b1;
#10 A = 1'b1; B = 1'b0;
#10 A = 1'b1; B = 1'b1;

#10 $finish;
end 
endmodule
