module diff_syn(q,qn,d,clk,set,reset);
	input d,clk,set,reset;
	output reg q,qn;
	always @(posedge clk)
	begin
		if (~reset)
		begin
			q<=1'b0;
			qn<=1'b1;
		end
		else if(~set)
		begin
			q<=1'b1;
			qn<=1'b0;
		end
		else
		begin
			q<=d;
			qn<=~d;
		end
	end
endmodule
