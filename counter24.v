`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:32 03/23/2022 
// Design Name: 
// Module Name:    counter24 
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
module counter24(CntH, CntL, nCLR, EN, CP);
	input nCLR, EN, CP;
	output reg [3:0] CntH = 0, CntL = 0;
	always @(posedge CP or negedge nCLR) begin
		if (~nCLR) begin
			{CntH, CntL} <= 0;
		end
		else if (~EN) begin
			{CntH, CntL} <= {CntH, CntL};
		end
		else if (CntH > 2 || CntL > 9 || CntH == 2 && CntL >= 3) begin
			{CntH, CntL} <= 0;
		end
		else if (CntL == 9) begin
			CntH <= CntH + 1'b1;
			CntL <= 0;
		end
		else begin
			CntH <= CntH;
			CntL <= CntL + 1'b1;
		end
	end
endmodule
