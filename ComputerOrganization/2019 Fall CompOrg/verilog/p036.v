module reg_w(dout,din,clk,clr);
	parameter WIDTH=7;
	input clk, clr;
	input [WIDTH:0] din;
	output reg[WIDTH:0] dout;
	always@(posedge clk,posedge clr)
	begin
		if(clr)
			dout<=0;
		else
			dout<=din;
	end
endmodule
