module Four_Bit_Comparator(input A,B, output E,L,G);
always @(A,B)
  begin 
  if(A == B)
    begin
    E = 1'b1;
    L = 1'b0;
    G = 1'b0;
    end
  else if(A<B)
    begin
    L = 1'b1;
    G = 1'b0;
    E = 1'b0;
    end
  else
    begin
    G = 1'b1;
    L = 1'b0;
    E = 1'b0;
    end
  end
endmodule
