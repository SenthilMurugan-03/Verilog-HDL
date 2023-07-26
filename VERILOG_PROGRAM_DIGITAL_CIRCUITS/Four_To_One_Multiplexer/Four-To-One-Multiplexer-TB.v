module Four_To_One_Mux_TB;
reg [0:3]A,S0,S1;
wire OUT;
Four_To_One_Mux([0:3]A,S0,S1,OUT);
initial
begin
A = {1001};
#10 S0 = 1'b0; S1 = 1'b0;
#10 S0 = 1'b0; S1 = 1'b1;
#10 S0 = 1'b1; S1 = 1'b0;
#10 S0 = 1'b1; S1 = 1'b1;
end
endmodule
