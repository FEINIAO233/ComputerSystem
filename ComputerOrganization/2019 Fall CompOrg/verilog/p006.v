module add4_bin(cout,sum,ina,inb,cin);
	input cin;
	input[3:0] ina,inb;
	output[3:0] sum; 
	output cout;
	assign {cout,sum} = ina+inb+cin;
endmodule

