module wallacetree(y,a,b);
input [7:0]a,b;
output [16:0]y;
wire [7:0]c1,c2,c3,c4,c5,c6,c7,c8;
wire [15:0]sum,carry;
wire [16:0]fs,fc;
wire [11:0]hs,hc;

assign c1 = b[0]*a;
assign c2 = b[1]*a;
assign c3 = b[2]*a;
assign c4 = b[3]*a;
assign c5 = b[4]*a;
assign c6 = b[5]*a;
assign c7 = b[6]*a;
assign c8 = b[7]*a;

HA h1(hs[0],hc[0],c1[1],c2[0]);
FA f1(fs[0],fc[0],c1[2],c2[1],c3[0]);
EXACT e1(sum[0],carry[0],c1[3],c2[2],c3[1],c4[0]);
EXACT e2(sum[1],carry[1],c1[4],c2[3],c3[2],c4[1]);
EXACT e3(sum[2],carry[2],c1[5],c2[4],c3[3],c4[2]);
HA h2(hs[1],hc[1],c5[1],c6[0]);
EXACT e4(sum[3],carry[3],c1[6],c2[5],c3[4],c4[3]);
FA f2(fs[1],fc[1],c5[2],c6[1],c7[0]);
EXACT e5(sum[4],carry[4],c1[7],c2[6],c3[5],c4[4]);
EXACT e6(sum[5],carry[5],c5[3],c6[2],c7[1],c8[0]);
EXACT e7(sum[6],carry[6],c2[7],c3[6],c4[5],c5[4]);
FA f3(fs[2],fc[2],c6[3],c7[2],c8[1]);
EXACT e8(sum[7],carry[7],c3[7],c4[6],c5[5],c6[4]);
HA h3(hs[2],hc[2],c7[3],c8[2]);
EXACT e9(sum[8],carry[8],c4[7],c5[6],c6[5],c7[4]);
EXACT e10(sum[9],carry[9],c5[7],c6[6],c7[5],c8[4]);
FA f4(fs[3],fc[3],c6[7],c7[6],c8[5]);
HA h4(hs[3],hc[3],c7[7],c8[6]);


HA h5(hs[4],hc[4],hc[0],fs[0]);
HA h6(hs[5],hc[5],fc[0],sum[0]);
FA f5(fs[4],fc[4],carry[0],sum[1],c5[0]);
FA f6(fs[5],fc[5],carry[1],sum[2],hs[1]);
EXACT e11(sum[10],carry[10],carry[2],hc[1],sum[3],fs[1]);
EXACT e12(sum[11],carry[11],carry[3],fc[1],sum[4],sum[5]);
EXACT e13(sum[12],carry[12],carry[4],carry[5],sum[6],fs[2]);
EXACT e14(sum[13],carry[13],carry[6],fc[2],sum[7],hs[2]);
EXACT e15(sum[14],carry[14],carry[7],hc[2],sum[8],c8[3]);
HA h7(hs[6],hc[6],carry[8],sum[9]);
HA h8(hs[7],hc[7],carry[9],fs[3]);
HA h9(hs[8],hc[8],fc[3],hs[3]);
HA h10(hs[9],hc[9],hc[3],c8[7]);


HA h11(hs[10],hc[10],hc[4],hs[5]);
FA f7(fs[6],fc[6],hc[5],fs[4],hc[10]);
FA f8(fs[7],fc[7],fc[4],fs[5],fc[6]);
FA f9(fs[8],fc[8],fc[5],sum[10],fc[7]);
FA f10(fs[9],fc[9],carry[10],sum[11],fc[8]);
FA f11(fs[10],fc[10],carry[11],sum[12],fc[9]);
FA f12(fs[11],fc[11],carry[12],sum[13],fc[10]);
FA f13(fs[12],fc[12],carry[13],sum[14],fc[11]);
FA f14(fs[13],fc[13],carry[14],hs[6],fc[12]);
FA f15(fs[14],fc[14],hc[6],hs[7],fc[13]);
FA f16(fs[15],fc[15],hc[7],hs[8],fc[14]);
FA f17(fs[16],fc[16],hc[8],hs[9],fc[15]);
HA h12(hs[11],hc[11],hc[9],fc[16]);

assign y={hc[11],hs[11],fs[16],fs[15],fs[14],fs[13],fs[12],fs[11],fs[10],fs[9],fs[8],fs[7],fs[6],hs[10],hs[4],hs[0],c1[0]};

endmodule





