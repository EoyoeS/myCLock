`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:33 03/27/2022 
// Design Name: 
// Module Name:    Tellthetime 
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
module Tellthetime(Hour12, tell, CP, Di, Second);
	input [7:0] Hour12, Second;
	input tell, CP;
	output Di;
	// output reg [3:0] oH, oS;
	wire [3:0] H_num, S_num;
	reg [3:0] count = 0;
	assign H_num = Hour12[3:0] + (Hour12[7:4] != 0 ? 4'ha : 0);
	assign S_num = (Second[7:4] == 0 || Second[7:4] == 4'h1 && Second[3:0] <= 5) ? (Second[3:0] + (Second[7:4] ? 4'ha : 0)) : 4'hf;
	assign Di = tell && CP && S_num < H_num;
	//always @(posedge CP or negedge CP) begin
	//	oH = H_num;
	//	oS = S_num;
	//end
endmodule
