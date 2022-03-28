`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:45 03/23/2022
// Design Name:   counter10
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_counter10.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter10
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_counter10;

	// Inputs
	reg nCR;
	reg EN;
	reg CP;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	counter10 uut (
		.Q(Q), 
		.nCR(nCR), 
		.EN(EN), 
		.CP(CP)
	);

	initial begin
		// Initialize Inputs
		nCR = 0;
		EN = 0;
		CP = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		EN = 1'b1;
		nCR = 1'b1;
		forever #5 CP = ~CP;
		
	end
      
endmodule

