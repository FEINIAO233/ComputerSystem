module full_adder1(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire a_n, b_n, cin_n, sum_p1,sum_p2,sum_p3,sum_p4, cout_p1, cout_p2, cout_p3;
not(a_n,a),(b_n,b),(cin_n,cin);
and(sum_p1,a_n,b_n,cin),(sum_p2,a_n,b,cin_n),(sum_p3,a,b_n,cin_n),(sum_p4,a,b,cin),(cout_p1,b,cin),(cout_p2,a,cin),(cout_p3,a,b);
or(sum,sum_p1,sum_p2,sum_p3,sum_p4),(cout,cout_p1,cout_p2,cout_p3);
endmodule

