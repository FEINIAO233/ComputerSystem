module decoder2_4(din,dout);
input [1:0] din;
output reg [3:0] dout;
always @(din)
	begin
		dout = 4'b0000;
		case(din)
			2'b00 : dout = 4'b0001;
			2'b01 : dout = 4'b0010;
			2'b10 : dout = 4'b0100;
			2'b11 : dout = 4'b1000;
		endcase
	end
endmodule
