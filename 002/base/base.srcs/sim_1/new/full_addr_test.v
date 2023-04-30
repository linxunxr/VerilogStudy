module full_adder_test_top;
reg a_test, b_test, cin_test;
wire sum_test, cout_test;

full_adder full_adder_test(
    .a(a_test), 
    .b(b_test), 
    .cin(cin_test), 
    .sum(sum_test), 
    .cout(cout_test)
    );
    initial begin
        a_test = 0;
        b_test = 0;
        cin_test = 0;
        #20 a_test = 1;
        b_test = 0;
        cin_test = 0;
        #20 a_test = 1;
        b_test = 1;
        cin_test = 0;
        #20 a_test = 1;
        b_test = 1;
        cin_test = 1;
        #20 a_test = 0;
        b_test = 0;
        cin_test = 1;
        #20 $stop;
    end
endmodule