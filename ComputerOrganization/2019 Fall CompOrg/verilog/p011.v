module count4(out,reset,clk);
	input reset,clk;
	output reg[3:0] out;
	always @(posedge clk)
	begin
		if(reset)
			out<=0;
		else
			out<=out+1;
	end
endmodule

