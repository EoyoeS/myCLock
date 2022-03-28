`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:45 03/23/2022 
// Design Name: 
// Module Name:    counter10 
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
module counter10(Q, nCLR, EN, CP);
	input nCLR, EN, CP;
	output reg [3:0] Q = 0;
	always @(posedge CP or negedge nCLR) begin
		if (~nCLR) begin
			Q <= 0;
		end
		else if (~EN) begin
			Q <= Q;
		end
		else if (Q >= 9) begin
			Q <= 0;
		end
		else begin
			Q <= Q + 1'b1;
		end
	end
endmodule
