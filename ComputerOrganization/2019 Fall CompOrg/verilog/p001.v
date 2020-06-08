module aoi(a,b,c,d,f);
	input a,b,c,d;
	output f;
	wire a,b,c,d,f;
	assign f=~((a&b)|(~(c&d)));
endmodule


