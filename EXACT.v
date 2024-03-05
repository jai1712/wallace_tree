module EXACT(sum,carry,a,b,c,d);
input a,b,c,d;
output sum,carry;
wire G4,G6,G7,G8,G9,G10,G11,G13,G15,G16,G17,G18,G19,G20,G21,G22,G23,G24,G25,G26,G27,G28,G29;
wire Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Y16,Y17,Y18;

//~a~b(c^d)
CNOT n1(G4,Y3,a,1'b1);
CNOT n2(G5,Y4,b,1'b1);
PG n3(G8,G9,Y5,Y3,Y4,1'b0);
PG n4(G10,Y11,Y9,c,d,1'b0);
PG n5(G11,G12,Y10,Y5,Y11,1'b0);
//~c~d(a^b)
CNOT n6(G6,Y6,c,1'b1);
CNOT n7(G7,Y7,d,1'b1);
PG n8(G13,G14,Y8,Y6,Y7,1'b0);


//PG n11(G21,G22,Y15,Y12,Y13,1'b0);
//PG n12(G23,G24,Y17,Y7,Y12,1'b0);

BJN n9(G16,G17,Y14,Y9,Y8,1'b0);
PG n10(G15,Y12,Y13,a,b,1'b0);
BJN n11(G18,G19,Y15,Y14,Y13,1'b0);
PG n12(G20,G21,Y16,Y15,Y12,1'b0);
BJN n13(G22,G23,sum,Y10,Y16,1'b0);//sum





PG n14(G24,G25,Y17,Y11,Y12,1'b0);
BJN n15(G26,G27,Y18,Y9,Y13,1'b0);
BJN n16(G28,G29,carry,Y17,Y18,1'b0);//carry

endmodule








