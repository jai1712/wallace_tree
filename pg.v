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

module PG(d,e,f,a,b,c);
input a,b,c;
output d,e,f;

assign d = a;
assign e = a^b;
assign f = (a&b)^c;

endmodule