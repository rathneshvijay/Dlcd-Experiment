module mux4to1(a, b, c, d, s1, s0, y); 
    input a, b, c, d, s1, s0; 
    output y; 
    wire w1, w2, w3, w4, w5, w6; 
    and (w1, a, ~s1, ~s0); 
    and (w2, b, ~s1, s0); 
    and (w3, c, s1, ~s0); 
    and (w4, d, s1, s0); 
    or  (y, w1, w2, w3, w4); 
endmodule 