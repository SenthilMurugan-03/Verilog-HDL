module Four_To_One_mux(input [0:3]A,input S0,S1,output OUT);

wire w1,w2,w3,w4;

always @(*)
  begin
    case({S0,S1})
	2'b00 : OUT = A[0];
	2'b01 : OUT = A[1];
	2'b10 : OUT = A[2];
	2'b11 : OUT = A[3];
    endcase
  end
endmodule 
