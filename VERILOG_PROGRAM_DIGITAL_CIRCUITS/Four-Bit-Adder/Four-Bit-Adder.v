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

module Four_Bit_Adder(input [0:3]A,B,output [0:3]S,C_OUT);
wire c1,c2,c3;
Full_Add fa1(A[0],B[0],S[0],c1);
Full_Add fa2(A[1],B[1],S[1],c2);
Full_Add fa3(A[2],B[2],S[2],c3);
Full_Add fa4(A[3],B[3],S[3],C_OUT);
endmodule
