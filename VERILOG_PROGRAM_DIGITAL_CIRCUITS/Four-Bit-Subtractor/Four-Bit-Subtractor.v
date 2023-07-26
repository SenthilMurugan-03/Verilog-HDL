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

module Foutit_Sub(input [0:3]A,B,output [0:3]D,B);
wire b1,b2,b3;
Full_Sub fs1(A[0],B[0],D[0],b1);
Full_Sub fs2(A[1],B[1],D[1],b2);
Full_Sub fs3(A[2],B[2],D[2],b3);
Full_Sub fs4(A[3],B[3],D[3],B);
endmodule
