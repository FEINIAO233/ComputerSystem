module mux4_1c(out,in1,in2,in3,in4,s0,s1);
	input in1,in2,in3,in4,s0,s1;
	output out;
	assign out=(in1&~s0&~s1)|(in2&~s0&s1)|(in3&s0&~s1)|(in4&s0&s1);
endmodule
