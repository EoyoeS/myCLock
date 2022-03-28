`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:03:18 03/23/2022
// Design Name:   counter24
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_counter24.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_counter24;

	// Inputs
	reg nCR;
	reg EN;
	reg CP;

	// Outputs
	wire [3:0] CntH;
	wire [3:0] CntL;

	// Instantiate the Unit Under Test (UUT)
	counter24 uut (
		.CntH(CntH), 
		.CntL(CntL), 
		.nCR(nCR), 
		.EN(EN), 
		.CP(CP)
	);

	initial begin
		// Initialize Inputs
		nCR = 1;
		EN = 1;
		CP = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		nCR = 1;
		EN = 0;
		#10
		nCR = 0;
		EN = 1;
		#10
		nCR = 1;
		forever #5 CP = ~CP;
	end
      
endmodule

