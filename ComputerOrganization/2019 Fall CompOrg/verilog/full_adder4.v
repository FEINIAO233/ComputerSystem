module full_adder4(a,b,cin,sum,cout);
input cin;
input [3:0]a,b;
output [3:0]sum;
output cout;
full_adder1 f0(a[0],b[0],cin,sum[0],cin1);
full_adder1 f1(a[1],b[1],cin,sum[1],cin2);
full_adder1 f2(a[2],b[2],cin,sum[2],cin3);
full_adder1 f3(a[3],b[3],cin,sum[3],cout);
endmodule

