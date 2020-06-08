module mux4_1a(out,in1,in2,in3,in4,s0,s1);
	input in1,in2,in3,in4,s0,s1;
	output out;
	wire s0_n,s1_n,w,x,y,z;
	not (s0_n,s0),(s1_n,s1);
	and (w,in1,s0_n,s1_n),(x,in2,s0_n,s1),
		(y,in3,s0,s1_n),(z,in4,s0,s1);
	or(out,w,x,y,z);
endmodule
