// 全加器顶层模块
module full_adder(a,b,cin,sum,cout);
    input a;
    input b;
    input cin;
    output sum;
    output cout;
    wire s1, c1, c2;
    half_adder half_adder1(a, b, s1, c1);
    half_adder half_adder2(s1, cin, sum, c2);
    or_gate or_gate1(c1, c2, cout);
endmodule

// 半加器模块
module half_adder (
    input a,
    input b,
    output sum,
    output carry
);
    // 异或运算完成相加
    assign sum = a ^ b;
    // 与运算完成进位
    assign carry = a & b;

endmodule

// 或门模块
module or_gate (
    input a,
    input b,
    output c
);
    // 或运算 
    assign c = a | b;
endmodule