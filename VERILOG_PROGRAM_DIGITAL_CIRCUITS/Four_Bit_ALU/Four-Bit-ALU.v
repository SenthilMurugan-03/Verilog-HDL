module ALU(input [0:3]A,B,[0:2]S,output [0:7]OUT);
always @(*)
begin
case({S[0],S[1]})
	3'b000 : OUT = A + B;
	3'b001 : OUT = A - B;
	3'b010 : OUT = A * B;
	3'b011 : OUT = A & B;
	3'b100 : OUT = A | B;
	3'b101 : OUT = A ^ B;
	3'b110 : begin
			OUT[0:3] = ~A;
			OUT[4:7] = ~B;
		 end
	3'b111 : begin
			OUT[0:3] = ~A + 1'b;
			OUT[4:7] = ~B + 1'b;
		 end
endcase
end
endmodule
