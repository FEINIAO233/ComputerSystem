module encoder_te();
    
    reg enable;
    reg [15:0] encoder_in; 
    wire [3:0] binary_out;
    
    initial begin
        $dumpfile("test.vcd");  //这两行主要是给gtkwave这个工具使用的...
        $dumpvars(0,encoder_te);
        
        $monitor("%g\t %b %b %b",
                $time,enable,encoder_in,binary_out);
                
        enable = 0;
        #5 enable = 1;
        #5 encoder_in = 16'h0004;
        #6 encoder_in = 16'h0040;
        #7 encoder_in = 16'h0400;
        #8 encoder_in = 16'h1000;
        #10 $finish;        
    end
    
    encoder en(binary_out,encoder_in,enable);
    
endmodule
