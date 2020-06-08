module ttl74138(a,y,g1,g2a,g2b)
	input [2:0] a;
	input g1,g2a,g2b;
	output reg[7:0] y;
	always @(*)
	begin
		if(g1&~g2a&~g2b)
		begin
			case (a)
			3'b000:y=8'b11111110;
			3'b001:y=8'b11111101;
			3'b010:y=8'b11111011;
			3'b011:y=8'b11110111;
			3'b100:y=8'b11101111;
			3'b101:y=8'b11011111;
			3'b110:y=8'b10111111;
			3'b111:y=8'b01111111;
			default:y=8'b11111111;
			endcase
		end
		else
			y=8'b11111111;
	end
endmodule
