
module Half_Add(input A,B, output S,C);
xor g1(S,A,B);
and g2(C,A,B);
endmodule
