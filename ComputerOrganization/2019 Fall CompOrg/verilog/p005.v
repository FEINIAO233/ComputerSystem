module vote(a,b,c,f);
	input a,b,c;
	output f;
	wire a,b,c,f;
	assign f = (a&b) | (a&c) | (b&c);
endmodule

