`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:47 03/23/2022
// Design Name:   SEG7_LUT
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_SEG7_LUT.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SEG7_LUT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SEG7_LUT;

	// Inputs
	reg [3:0] iDIG;

	// Outputs
	wire [6:0] oSEG;

	// Instantiate the Unit Under Test (UUT)
	SEG7_LUT uut (
		.oSEG(oSEG), 
		.iDIG(iDIG)
	);

	initial begin
		// Initialize Inputs
		iDIG = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

