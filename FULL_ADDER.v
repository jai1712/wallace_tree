`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:09 02/19/2024 
// Design Name: 
// Module Name:    PG 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module FA(fs,fc,a,b,c);
input a,b,c;
output fs,fc;

wire y1,y2,G1,G2;
PG b2(G1,y1,y2,a,b,1'b0);
PG b3(G2,fs,fc,y1,c,y2);


endmodule