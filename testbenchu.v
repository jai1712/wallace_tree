`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:31:08 02/23/2024
// Design Name:   wallacetree
// Module Name:   C:/Users/MANI/OneDrive/Pictures/Camera Roll/verilog/jai/testbenchu.v
// Project Name:  jai
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallacetree
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchu;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [16:0] y;

	// Instantiate the Unit Under Test (UUT)
	wallacetree uut (
		.y(y), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00110101;
		b = 8'b01001100;
		#100;
		
		a = 8'b11110101;
		b = 8'b01001100;
		#100;
		
		a = 8'b00110101;
		b = 8'b01111100;
		#100;
        
		// Add stimulus here

	end
      
endmodule

