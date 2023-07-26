module d_flip_flop (input reg D,clk,r, output Q);
always @(posedge clk or posedge r)
begin
    if (r == 1'b1 )
        Q <= 1'b0;
    else
        Q <= D;
end
endmodule
