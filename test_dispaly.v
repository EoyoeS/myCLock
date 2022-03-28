`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:15:31 03/24/2022
// Design Name:   display
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_dispaly.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dispaly;

	// Inputs
	reg [6:0] SEG7;
	reg [6:0] SEG6;
	reg [6:0] SEG5;
	reg [6:0] SEG4;
	reg [6:0] SEG3;
	reg [6:0] SEG2;
	reg [6:0] SEG1;
	reg [6:0] SEG0;
	reg [7:0] DOT;
	reg CP_100MHz;
	reg nCLR;

	// Outputs
	wire [7:0] AN;
	wire [6:0] C;
	wire DP;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.SEG7(SEG7), 
		.SEG6(SEG6), 
		.SEG5(SEG5), 
		.SEG4(SEG4), 
		.SEG3(SEG3), 
		.SEG2(SEG2), 
		.SEG1(SEG1), 
		.SEG0(SEG0), 
		.DOT(DOT), 
		.AN(AN), 
		.C(C), 
		.DP(DP), 
		.CP_100MHz(CP_100MHz), 
		.nCLR(nCLR)
	);

	initial begin
		// Initialize Inputs
		SEG7 = 0;
		SEG6 = 0;
		SEG5 = 0;
		SEG4 = 0;
		SEG3 = 0;
		SEG2 = 0;
		SEG1 = 0;
		SEG0 = 0;
		DOT = 0;
		CP_100MHz = 0;
		nCLR = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		nCLR = 1;
		SEG7 = 7'b111_1000;
		SEG6 = 7'b000_0010;
		SEG5 = 7'b001_0010;
		SEG4 = 7'b001_1001;
		SEG3 = 7'b011_0000;
		SEG2 = 7'b010_0100;
		SEG1 = 7'b111_1001;
		SEG0 = 7'b100_0000;
		forever #1 CP_100MHz = ~CP_100MHz;
	end
      
endmodule

