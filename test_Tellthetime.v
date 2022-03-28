`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:01 03/27/2022
// Design Name:   Tellthetime
// Module Name:   C:/Users/eoyoes/myClock/myClock/test_Tellthetime.v
// Project Name:  myClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Tellthetime
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Tellthetime;

	// Inputs
	reg [7:0] Hour12;
	reg tell;
	reg CP;
	reg [7:0] Second;

	// Outputs
	wire Di;
	wire [3:0] oH;
	wire [3:0] oS;

	// Instantiate the Unit Under Test (UUT)
	Tellthetime uut (
		.Hour12(Hour12), 
		.tell(tell), 
		.CP(CP), 
		.Di(Di), 
		.Second(Second), 
		.oH(oH), 
		.oS(oS)
	);

	initial begin
		// Initialize Inputs
		Hour12 = 8'h11;
		tell = 0;
		CP = 0;
		Second = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		CP = ~CP;
		#10;
		CP = ~CP;
		#10; 
		CP = ~CP;
		#10;
		tell = 1;
		CP = ~CP;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		Hour12 = 8'h12;
		#10; 
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = 8'h10;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
		CP = ~CP;
		Second = Second + 8'h1;
		#10;
		CP = ~CP;
		#10;
	end
      
endmodule

