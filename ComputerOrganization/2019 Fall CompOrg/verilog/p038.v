module fsm(clk,clr,z,qout);
	input clk,clr;
	output reg z;
	output reg[2:0] qout;
	always @(posedge clk or posedge clr)
	begin
		if (clr) qout<=0;
		else
		case (qout)
		3'b000:qout<=3'b001;
		3'b001:qout<=3'b010;
		3'b010:qout<=3'b011;
		3'b011:qout<=3'b100;
		3'b100:qout<=3'b000;
		endcase
	end

	always@(qout)
	begin
		case(qout)
		3'b0100:z=1'b1;
		default:z=1'b0;
	end
endmodule
