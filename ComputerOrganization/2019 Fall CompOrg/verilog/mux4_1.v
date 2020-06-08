module mux4_1(din1, din2, din3, din4, se1, se2, dout);
input din1, din2, din3, din4, se1, se2;
output reg dout;
always @  (din1 or din2 or din3 or din4 or se1 or se2)
       case({se1,se2})
       2'b00 : dout=din1;
       2'b01 : dout=din2;
       2'b10 : dout=din3;
       2'b11 : dout=din4;
       endcase
endmodule

