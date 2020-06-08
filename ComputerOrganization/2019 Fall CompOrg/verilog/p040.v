module fsm4_seq101(clk,clr,x,z);
	input clk,clr,x;
	output reg z;
	reg[1:0] state;
	parameter S0=2'b00,S1=2'b01,S2=2'b11,S3=2'b10;
	always @(posedge clk or posedge clr)
	begin
		if(clr) state<=S0;
		else case(state)
		S0:begin if(x) begin state<=S1;z=1'b0;end
			else begin state<=S0;z=1'b0;end
			end
		S1:begin if(x) begin state<=S1;z=1'b0;end
			else begin state<=S2;z=1'b0;end
			end
		S2:begin if(x) begin state<=S3;z=1'b0;end
			else begin state<=S0;z=1'b0;end
			end
		S3:begin if(x) begin state<=S1;z=1'b1;end
			else begin state=S2;z=1'b1;end
			end
		default:begin state<=S0;z=1'b0;end
		endcase
	end
endmodule
