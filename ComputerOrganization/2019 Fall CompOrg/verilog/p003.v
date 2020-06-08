module aoi_a(a,b,c,d,f);
	input a,b,c,d;
	output f;
	reg f;
	always @(a or b or c or d)
	begin
		f = ~((a&b)|(~(c&d)));
	end
endmodule
