module count10(cout,qout,reset,clk);
	input reset,clk;
	output reg[3:0] qout;
	output cout;
	always @(posedge clk)
	begin
		if(reset)
			qout<=0;
		else if (qout<9)
			qout<=qout+1;
		else
			qout<=0;
	end
	assign cout = (qout==9)?1:0;
endmodule
