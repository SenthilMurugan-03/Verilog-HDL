module SISO(input clk,r,d,output reg so);
reg [3:0] tmp;
always @(posedge clk )
begin
if (r)
tmp <= 4’b0000;
else
tmp <= tmp << 1;
tmp[0] <= d;
so = tmp[3];
end
endmodule
