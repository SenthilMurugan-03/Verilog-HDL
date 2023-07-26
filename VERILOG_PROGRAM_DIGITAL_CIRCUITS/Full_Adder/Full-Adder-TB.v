module Full_Adder_TB;
reg A,B,C_IN;
wire S,C_OUT;
Full_Add uut(A,B,S,C);
initial
begin

#10 A = 1'b0; B = 1'b0; C_IN = 1'b0;
#10 A = 1'b0; B = 1'b0; C_IN = 1'b1;
#10 A = 1'b0; B = 1'b1; C_IN = 1'b0;
#10 A = 1'b0; B = 1'b1; C_IN = 1'b1;
#10 A = 1'b1; B = 1'b0; C_IN = 1'b0;
#10 A = 1'b1; B = 1'b0; C_IN = 1'b1;
#10 A = 1'b1; B = 1'b1; C_IN = 1'b0;
#10 A = 1'b1; B = 1'b1; C_IN = 1'b1;

#10 $finish;
end
endmodule
