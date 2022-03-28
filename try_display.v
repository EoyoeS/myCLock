`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:26 03/24/2022 
// Design Name: 
// Module Name:    try_display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module try_display(CP_1MHz, AN, C, DP, iD);
	input [3:0] iD;
	input CP_1MHz;
	output [7:0] AN;
	output [6:0] C;
	output DP;
	wire [6:0] SEG7, SEG6, SEG5, SEG4, SEG3, SEG2, SEG1, SEG0; 
	SEG7_LUT T7(SEG7, iD);
	SEG7_LUT T6(SEG6, iD);
	SEG7_LUT T5(SEG5, iD);
	SEG7_LUT T4(SEG4, iD);
	SEG7_LUT T3(SEG3, iD);
	SEG7_LUT T2(SEG2, iD);
	SEG7_LUT T1(SEG1, iD);
	SEG7_LUT T0(SEG0, iD);
	wire [7:0] DOT;
	wire nCLR;
	assign DOT = 8'b0101_0101;
	assign nCLR = 1'b1;
	display D0(SEG7, SEG6, SEG5, SEG4, SEG3, SEG2, SEG1, SEG0, DOT, AN, C, DP, CP_1MHz, nCLR);
endmodule
