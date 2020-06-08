module aoi_2001(input wire a,b,c,d, output wire f);
	assign f = ~((a&b)|(~(c&d)));
endmodule

