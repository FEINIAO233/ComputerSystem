module ttl373(le,oe,q,d)
	input le,oe;
	input[7:0]d;
	output reg[7:0] q;
	always @(*)
	begin
		if(~oe&le)
			q<=d;
		else
			q<=8'bz;
	end
endmodule
