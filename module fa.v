module fa(a,b,c,sum,carry); 
input a,b,c; 
output sum,carry; 
wire [3:1]w; 
xor g1(w[1],a,b); 
xor g3(sum,w[1],c); 
and g2(w[2],a,b); 
and g4(w[3],w[1],c); 
or g5(carry,w[3],w[2]); 
endmodule 