`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:24:14 03/24/2022
// Design Name:   try_display
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_try_display.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: try_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_try_display;

	// Inputs
	reg CP_1MHz;
	reg [3:0] iD;

	// Outputs
	wire [7:0] AN;
	wire [6:0] C;
	wire DP;

	// Instantiate the Unit Under Test (UUT)
	try_display uut (
		.CP_1MHz(CP_1MHz), 
		.AN(AN), 
		.C(C), 
		.DP(DP), 
		.iD(iD)
	);

	initial begin
		// Initialize Inputs
		CP_1MHz = 0;
		iD = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		iD = 4'b0111;
		forever #1 CP_1MHz = ~ CP_1MHz;
	end
      
endmodule

