module tb_boolean_min;
    reg A, B, C;
    wire F;

    boolean_min uut (.A(A), .B(B), .C(C), .F(F));

    initial begin
        $monitor("A=%b B=%b C=%b => F=%b", A, B, C, F);
        A=0; B=0; C=0;
        #10 A=0; B=0; C=1;
        #10 A=0; B=1; C=0;
        #10 A=0; B=1; C=1;
        #10 A=1; B=0; C=0;
        #10 A=1; B=0; C=1;
        #10 A=1; B=1; C=0;
        #10 A=1; B=1; C=1;
        #10 $finish;
    end
endmodule