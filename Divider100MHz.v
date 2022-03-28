`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:20 03/23/2022 
// Design Name: 
// Module Name:    Divider100MHz 
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

// 分频器
module Divider100MHz(CP_100MHz, nCLR, CP_1Hz);
	parameter N = 26;
	parameter CLK_Freq = 100000000;
	parameter OUT_Freq = 1;
	input nCLR, CP_100MHz;
	output reg CP_1Hz;
	reg [N - 1:0] Count_DIV;
	always @(posedge CP_100MHz or negedge nCLR) begin
		if (! nCLR) begin // 异步清零
			CP_1Hz <= 0;
			Count_DIV <= 0;
		end
		else begin
			if (Count_DIV < CLK_Freq / (2 * OUT_Freq) - 1) begin
				Count_DIV <= Count_DIV + 1'b1;
			end
			else begin // CP_1Hz信号翻转
				Count_DIV <= 0;
				CP_1Hz <= ~ CP_1Hz;
			end
		end
	end
endmodule
