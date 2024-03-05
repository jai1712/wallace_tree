`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:45 02/19/2024 
// Design Name: 
// Module Name:    HA 
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
module HA(hs,hc,a,b);
input a,b;
output hs,hc;
wire G0;
PG b1(G0,hs,hc,a,b,1'b0);
//assign hs = a^b;
//assign hc = a&b;

endmodule