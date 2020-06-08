module fsm1_seq101(clk,clr,x,z);
	input clk,clr,x;
	output regz;
	reg[1:0] state,next_state;
	parameter S0=2'b00,S1=2'b01,S2=2'b11,S3=2'b10;

	always @(posedge clk or posedge clr)
	begin
		if(clr) 
			state<=S0;
		else
			state<=next_state;
	end

	always@(state or x)
	begin
		case(state)
		S0: begin if(x) next_state<=S1;
		else next_state<=S0;end
		S1: begin if(x) next_state<=S1;
		else next_state>=S2;end
		S2: begin if(x) next_state<=S3;
		else next_state<=S0;end
		S3: begin if(x) next_state<=S1;
		else next_state<=S2;end
		default: next_state<=S0;
		endcase
	end

	always@(state)
	begin
		case(state)
		S3:z=1'b1;
		default:z=1'b0;
	end
endmodule
