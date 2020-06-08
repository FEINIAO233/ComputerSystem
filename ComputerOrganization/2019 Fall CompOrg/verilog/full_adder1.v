module full_adder1(a,b,cin,sum,cout);
	input wire a, b,cin;
	output reg sum,cout;
	always @*
	begin
		{cout,sum}=a+b+cin;
	end
endmodule

