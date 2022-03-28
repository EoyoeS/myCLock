`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:27 03/24/2022
// Design Name:   t24t12
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_t24t12.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: t24t12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_t24t12;

	// Inputs
	reg Trans;
	reg [7:0] Hour24;

	// Outputs
	wire [7:0] Hour12;
	wire [3:0] Line;

	// Instantiate the Unit Under Test (UUT)
	t24t12 uut (
		.Trans(Trans), 
		.Hour24(Hour24), 
		.Hour12(Hour12), 
		.Line(Line)
	);

	initial begin
		// Initialize Inputs
		Trans = 0;
		Hour24 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Trans = 1'b1;
		#100;
		Hour24 = 8'h1;
		#100;
		Hour24 = 8'h2;
		#100;
		Hour24 = 8'h3;
		#100;
		Hour24 = 8'h4;
		#100;
		Hour24 = 8'h5;
		#100;
		Hour24 = 8'h6;
		#100;
		Hour24 = 8'h7;
		#100;
		Hour24 = 8'h8;
		#100;
		Hour24 = 8'h9;
		#100;
		Hour24 = 8'h10;
		#100;
		Hour24 = 8'h11;
		#100;
		Hour24 = 8'h12;
		#100;
		Hour24 = 8'h13;
		#100;
		Hour24 = 8'h14;
		#100;
		Hour24 = 8'h15;
		#100;
		Hour24 = 8'h16;
		#100;
		Hour24 = 8'h17;
		#100;
		Hour24 = 8'h18;
		#100;
		Hour24 = 8'h19;
		#100;
		Hour24 = 8'h20;
		#100;
		Hour24 = 8'h21;
		#100;
		Hour24 = 8'h22;
		#100;
		Hour24 = 8'h23;
	end
      
endmodule

