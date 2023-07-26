module Full_Subtractor_TB;
reg A,B,C_IN;
wire D,B;
Full_Subtractor(A,B,C_IN,D,B);
initial 
begin

#10 A = 0; B = 0; C_IN = 0;
#10 A = 0; B = 0; C_IN = 1;
#10 A = 0; B = 1; C_IN = 0;
#10 A = 0; B = 1; C_IN = 1;
#10 A = 1; B = 0; C_IN = 0;
#10 A = 1; B = 0; C_IN = 1;
#10 A = 1; B = 1; C_IN = 0;
#10 A = 1; B = 1; C_IN = 1;

#10 finish;
end
endmodule
