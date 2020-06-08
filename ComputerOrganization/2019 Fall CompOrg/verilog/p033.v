module ttl74148(din,en,gs,eo,dout);
	input[7:0] din;
	input ei;
	output reg gs,eo;
	output reg[2:0] dout;
	always @(ei,din)
	begin
		if(ei)
		begin
			dout<=3'b111;
			gs<=1'b1;
			eo<=1'b1;
		end
		else if (din==8'b11111111)
		begin
			dout<=3'b111;
			gs<=1'b1;
			eo<-1'b0;
		end
		else if(!din[7]) begin dout<=3'b000;gs<=1'b0;eo<=1'b1;end
		else if(!din[6]) begin dout<=3'b001;gs<=1'b0;eo<=1'b1;end
		else if(!din[5]) begin dout<=3'b010;gs<=1'b0;eo<=1'b1;end
		else if(!din[4]) begin dout<=3'b011;gs<=1'b0;eo<=1'b1;end
		else if(!din[3]) begin dout<=3'b100;gs<=1'b0;eo<=1'b1;end
		else if(!din[2]) begin dout<=3'b101;gs<=1'b0;eo<=1'b1;end
		else if(!din[1]) begin dout<=3'b110;gs<=1'b0;eo<=1'b1;end
		else begin dout<=3'b111;gs<=1'b0;eo<=1'b1;end
	end
endmodule

