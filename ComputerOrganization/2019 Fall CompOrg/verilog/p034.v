module jkff_rs(clk,j,k,q,rs,set);
	input clk,j,k,set,rs;
	output reg q;
	always @(posedge clk, negedge rs, negedge set)
	begin
		if(!rs) 
			q<=1'b0;
		else if(!set)
			q<=1'b1;
		else 
		case({j,k})
			2'b00:q<=q;
			2'b01:q<=1'b0;
			2'b10:q<=1'b1;
			2'b11:q<=~q;
			default:q<=1'bx;
		endcase
	end
endmodule
