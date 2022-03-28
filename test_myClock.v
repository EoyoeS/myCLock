`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:45:40 03/24/2022
// Design Name:   myClock
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_myClock.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: myClock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_myClock;

	// Inputs
	reg CP_100MHz;
	reg nCLR;
	reg EN;
	reg Adj_Minute;
	reg Adj_Hour;

	// Outputs
	wire [7:0] AN;
	wire [6:0] C;
	wire DP;

	// Instantiate the Unit Under Test (UUT)
	myClock uut (
		.CP_100MHz(CP_100MHz), 
		.nCLR(nCLR), 
		.EN(EN), 
		.Adj_Minute(Adj_Minute), 
		.Adj_Hour(Adj_Hour), 
		.AN(AN), 
		.C(C), 
		.DP(DP)
	);

	initial begin
		// Initialize Inputs
		CP_100MHz = 0;
		nCLR = 0;
		EN = 0;
		Adj_Minute = 0;
		Adj_Hour = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

