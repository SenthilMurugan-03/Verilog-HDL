module Four_Bit_Adder_TB;

reg [3:0]A,B;
wire S,C_OUT;

Four_Bit_Adder([3:0]A,B,[3:0]S,C_OUT);

initial 
begin

#10
A[3:0] = 4'b0101;
B[3:0] = 4'b0111;

#10
A[3:0] = 4'b1101;
B[3:0] = 4'b0001;

#10 $finish;
end
endmodule
