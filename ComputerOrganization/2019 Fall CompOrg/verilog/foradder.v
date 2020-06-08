module for_adder(a,b,cin,sum,cout);
	input [7:0] a,b; input cin;
	output reg[7:0] sum; output reg cout;
	reg c; integer i;
	always @*
	begin
		c = cin;
		for (i = 0;i < 8;i++)
		begin
			{c,sum[i]} = a[i] + b[i] + c;
		end
		cout = c;
	end
endmodule
