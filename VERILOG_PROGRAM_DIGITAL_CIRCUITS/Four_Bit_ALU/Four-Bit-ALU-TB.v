module Four_Bit_ALU_TB;
reg [3:0] A,B;
reg [2:0] S;
wire [7:0] OUT;
Four_Bit_ALU([3:0]A,[3:0]B,[2:0]S,OUT);
initial 
begin
  #10 A[3:0] = 3'b001; B[3:0] = 3'b011; S[0] = 1'b0; S[1] = 1'b0 , S[2] = 1'b0;
#10 S[0] = 1'b0; S[1] = 1'b0 , S[2] = 1'b0;
#10 S[0] = 1'b0; S[1] = 1'b1 , S[2] = 1'b1;
#10 S[0] = 1'b0; S[1] = 1'b1 , S[2] = 1'b0;
#10 S[0] = 1'b1; S[1] = 1'b0 , S[2] = 1'b1;
#10 S[0] = 1'b1; S[1] = 1'b0 , S[2] = 1'b0;
#10 S[0] = 1'b1; S[1] = 1'b1 , S[2] = 1'b1;
#10 S[0] = 1'b1; S[1] = 1'b1 , S[2] = 1'b0;
end
endmodule
