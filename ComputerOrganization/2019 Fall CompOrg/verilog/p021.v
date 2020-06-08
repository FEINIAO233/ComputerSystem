function[7:0] get0;
	input [7:0] x;
	reg[7:0] count;
	integer i;
	begin
		count=0;
		for (i=0;i<=7;i=i+1)
			if(x[i]=1'b0)
				count=count+1;
		get0=count
	end
endfunction

