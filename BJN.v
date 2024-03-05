`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:36 02/19/2024 
// Design Name: 
// Module Name:    BJN 
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
module BJN(t,u,v,q,r,s);
input q,r,s;
output t,u,v;

assign t = q;
assign u = r;
assign v = (q|r)^s;

endmodule
