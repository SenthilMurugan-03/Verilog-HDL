module Four_Bit_Subtractor_TB;

reg [3:0]A,B;
wire [3:0]D;
wire C_OUT;

Four_Bit_Subtractor([3:0]A,B,[3:0]D,C_OUT);

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
