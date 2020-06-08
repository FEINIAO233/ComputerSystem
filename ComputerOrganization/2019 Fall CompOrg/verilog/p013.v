module compare_w(a,b,larger,equal,less);
	parameter SIZE=6;
	input[SIZE-1:0] a,b;
	output larger, equal, less;
	wire larger, equal, less;
	assign larger=(a>b);
	assign equal=(a==b);
	assign less=(a<b);
endmodule
