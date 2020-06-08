module add4_bcd(cout,sum,ina,inb,cin);
	input cin;
	input[3:0] ina,inb;
	output[3:0] sum;
	
	reg[3:0] sum;
	output cout;
	reg cout;
	reg[4:0] temp;
	always @(ina, inb, cin)
		begin
			temp<=ina+inb+cin;
			if(temp>9)
				{cout,sum}<=temp+6;
			else
				{cout,sum}<=temp;
		end
endmodule

