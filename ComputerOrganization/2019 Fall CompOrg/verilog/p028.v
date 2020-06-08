module half_add(a,b,so,co);
	input a,b;
	output so,co;
	assign co=a&b;
	assign so=a^b;
endmodule

module full_add(ain,bin,cin,sum,cout);
	input ain,bin,cin;
	output sum,cout;
	wire d,e,f;
	half_add u1(ain,bin,e,d);
	half_add u2(e,cin,sum,f);
	or u3(cout,d,f);
endmodule
