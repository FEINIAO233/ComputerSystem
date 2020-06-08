module add_w(a,b,sum);
	parameter MSB=15;
	input [MSB:0] a,b;
	output [MSB+1:0] sum;
	assign sum = a+b;
endmodule
