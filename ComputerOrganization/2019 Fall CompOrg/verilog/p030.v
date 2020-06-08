module add4_2(cout,sum,a,b,cin);
	input cin;
	input [3:0] a,b;
	output [3:0] sum;
	output cout;
	assign {cout,sum}=a+b+cin;
endmodule
