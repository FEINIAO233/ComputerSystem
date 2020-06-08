module full_add3(a,b,cin,sum,cout);
	input a,b,cin;
	output reg sum,cout;
	always@*
	begin
		{cout,sum}=a+b+cin;
	end
endmodule
