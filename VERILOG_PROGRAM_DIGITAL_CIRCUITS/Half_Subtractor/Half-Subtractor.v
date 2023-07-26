module Half_Sub(intput A , B , output D , B );
wire w1;
xor g1(D,A,B);
not g2(w1,A);
and g3(B,w1,B);
endmodule
