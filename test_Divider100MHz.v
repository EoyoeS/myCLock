`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:55 03/23/2022
// Design Name:   Divider100MHz
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_Divider100MHz.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider100MHz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Divider100MHz;

	// Inputs
	reg CP_100MHz;
	reg nCLR;

	// Outputs
	wire CP_1Hz;

	// Instantiate the Unit Under Test (UUT)
	Divider100MHz uut (
		.CP_100MHz(CP_100MHz), 
		.nCLR(nCLR), 
		.CP_1Hz(CP_1Hz)
	);

	initial begin
		// Initialize Inputs
		CP_100MHz = 0;
		nCLR = 0;

		// Wait 100 ns for global reset to finish
		#1;
        
		// Add stimulus here
		nCLR = 1'b1;
		forever #1 CP_100MHz = ~ CP_100MHz;

	end
      
endmodule

