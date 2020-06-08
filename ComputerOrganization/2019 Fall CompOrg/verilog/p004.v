module aoi_b(input a,b,c,d, output reg f);
	always @(a or b or c or d)
	begin
		f = ~((a&b)|(~(c&d)));
	end
endmodule


