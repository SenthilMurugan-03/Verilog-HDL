module Half_Add(input A,B, output S,C);
xor g1(S,A,B);
and g2(C,A,B);
endmodule

module Full_Add(input A,B,C_IN,output S,C_OUT);
wire w1,w2,w3;
Half_Add ha1(A,B,w1,w2);
Half_Add ha2(w1,C_IN,S,w3);
or g1(C_OUT,w2,w3);
endmodule
