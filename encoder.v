 
module encoder2to4(din, y); 
    input [3:0] din; 
    output [1:0] y; 
    assign y = (din[0]) ? 2'b00 : 
               (din[1]) ? 2'b01 : 
               (din[2]) ? 2'b10 : 
               (din[3]) ? 2'b11 : 2'b00; 
endmodule 