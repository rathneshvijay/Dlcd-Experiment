module demux1to4(din, s1, s0, y0, y1, y2, y3); 
    input din, s1, s0; 
    output y0, y1, y2, y3; 
    wire ns1, ns0; 
    not (ns1, s1); 
    not (ns0, s0); 
    and (y0, din, ns1, ns0); 
    and (y1, din, ns1, s0); 
    and (y2, din, s1, ns0); 
    and (y3, din, s1, s0); 
endmodule 