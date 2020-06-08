module mux4_1b(out,in1,in2,in3,in4,s0,s1);
	input in1,in2,in3,in4,s0,s1;
	output reg out;
	always@(*)
		case({s0,s1})
		2'b00:out=in1;
		2'b01:out=in2;
		2'b10:out=in3;
		2'b11:out=in4;
		default:out=2'bx;
		endcase
endmodule
