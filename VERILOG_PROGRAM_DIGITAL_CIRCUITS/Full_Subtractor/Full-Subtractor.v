module Half_Sub(intput A , B , output D , B );
wire w1;
xor g1(D,A,B);
not g2(w1,A);
and g3(B,w1,B);
endmodule

module Full_Sub(input A , B , C , output D , B);
wire w1,w2,w3;
Half_Sub hs1(A,B,w1,w2);
Half_Sub hs2(w1,C,D,w3);
or g1(B,w2,w2);
endmodule
