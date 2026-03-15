module fs(a, b, bin, diff, bout); 
    input a, b, bin; 
    output diff, bout; 
    wire w1, w2, w3; 
    xor (w1, a, b); 
    xor (diff, w1, bin); 
    and (w2, ~a, b); 
    and (w3, ~w1, bin); 
    or  (bout, w2, w3); 
endmodule