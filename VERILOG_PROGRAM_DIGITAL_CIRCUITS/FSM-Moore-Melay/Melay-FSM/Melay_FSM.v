module MELAY(input x,clk,rst,output reg y);

	reg [1:0]p,n;
	parameter s0 = 2'b00;
	parameter s1 = 2'b01;
	parameter s2 = 2'b10;
	parameter s3 = 2'b11;
	always @(posedge clk,posedge rst)
	begin
		if(rst) 
			begin 
				p = s0;
			end
		else
		begin
				case ({ p })
					s0 :
						begin
							if(x) 
								begin
									n = s0;
									y = 1;
								end
							else
								begin 
									n = s1;
									y = 0;
								end
						end
					s1 : 
						begin
							if(x)
								begin
									n = s3;
									y = 0;
								end
							else
								begin
									n = s2;
									y = 1;
								end
						end
					s2 : 
						begin
							if(x)
								begin
									n = s1;
									y=0;
								end
							else
								begin
									n = s0;
									y = 1;
								end
						end
					s3 :
						begin
							if(x)
								begin
									n = s2;
									y = 1;
								end
							else
								begin
									n = s3;
									y = 0;
								end
						end
				endcase
									 p = n;

			end
	end
endmodule	
