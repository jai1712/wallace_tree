module CNOT(i,j,g,h);
input g,h;
output i,j;

assign i=g ;
assign j=g^h;

endmodule