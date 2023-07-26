module Four_Bit_UP_Counter_TB;

reg clk,r;
wire [3:0]count;

module Four_Bit_UP_Counter(input clk, r, output[3:0] count);

initial 
begin

#10 clk = 1'b1; r = 1'b0;
#10 clk = 1'b1; r = 1'b0;
#10 clk = 1'b1; r = 1'b0;
#10 clk = 1'b1; r = 1'b0;
#10 clk = 1'b1; r = 1'b1;

#10 $finish;
end 
endmodule


