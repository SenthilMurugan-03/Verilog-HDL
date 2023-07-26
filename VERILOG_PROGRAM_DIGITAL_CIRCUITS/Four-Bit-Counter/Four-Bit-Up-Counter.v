module Four_Bit_Counter(input clk, r, output[3:0] count);
reg [3:0] c;
always @(posedge clk or posedge r)
begin
if(r)
 counter_up <= 4'd0;
else
 counter_up <= c + 4'd1;
end 
assign count = c;
endmodule
