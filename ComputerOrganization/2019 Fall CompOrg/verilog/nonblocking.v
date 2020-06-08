module nonblocking(clk, a, c);
	input clk,a;
	output reg c;
	reg b;
	always @(posedge clk)
	begin
		b <= a;
		c <= b;
	end
endmodule
