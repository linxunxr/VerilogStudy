// ȫ��������ģ��
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

// �����ģ��
module half_adder (
    input a,
    input b,
    output sum,
    output carry
);
    // �������������
    assign sum = a ^ b;
    // ��������ɽ�λ
    assign carry = a & b;

endmodule

// ����ģ��
module or_gate (
    input a,
    input b,
    output c
);
    // ������ 
    assign c = a | b;
endmodule