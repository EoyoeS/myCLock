`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:13 03/23/2022 
// Design Name: 
// Module Name:    counter6 
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
module counter6(Q, nCLR, EN, CP);
	input nCLR, EN, CP;
	output reg [3:0] Q = 0;
	always @(posedge CP or negedge nCLR) begin
		if (~nCLR) begin
			Q <= 0;
		end
		else if (~EN) begin
			Q <= Q;
		end
		else if (Q >= 5) begin
			Q <= 0;
		end
		else begin
			Q <= Q + 1'b1;
		end
	end
endmodule
