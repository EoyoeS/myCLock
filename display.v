`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:54 03/23/2022 
// Design Name: 
// Module Name:    display 
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
module display(SEG7, SEG6, SEG5, SEG4, SEG3, SEG2, SEG1, SEG0, DOT, AN, C, DP, CP_100MHz, nCLR);
	input [6:0] SEG7, SEG6, SEG5, SEG4, SEG3, SEG2, SEG1, SEG0;
	input [7:0] DOT;
	input CP_100MHz;
	input nCLR;
	output reg [6:0] C;
	output reg DP;
	output reg [7:0] AN;
	parameter N = 17;
	parameter CLK_Freq = 50000000;
	parameter OUT_Freq = 400;
	reg [N - 1:0] Count_DIV;
	reg CP = 0;
	reg [2:0] Count = 0;
	// 分频
	always @(posedge CP_100MHz or negedge nCLR) begin
		if (! nCLR) begin // 异步清零
			// CP <= 0;
			Count_DIV <= 0;
		end
		else begin
			if (Count_DIV < CLK_Freq / (2 * OUT_Freq) - 1) begin
				Count_DIV <= Count_DIV + 1'b1;
			end
			else begin // CP_1Hz信号翻转
				Count_DIV <= 0;
				CP <= ~ CP;
			end
		end
	end
	always @(posedge CP or negedge nCLR) begin
		if (~ nCLR) begin
			AN[Count] = 1;
			Count = Count >= 3'd7 ? 0 : Count + 1'b1;
			DP = DOT[Count];
			AN = 8'b1111_1111;
			AN[Count] = 0;
			C = 8'b100_0000;
		end
		else begin
			AN[Count] = 1;
			Count = Count >= 3'd7 ? 0 : Count + 1'b1;
			DP = DOT[Count];
			AN = 8'b1111_1111;
			AN[Count] = 0;
			case (Count)
				3'b000: C = SEG0;
				3'b001: C = SEG1;
				3'b010: C = SEG2;
				3'b011: C = SEG3;
				3'b100: C = SEG4;
				3'b101: C = SEG5;
				3'b110: C = SEG6;
				3'b111: C = SEG7;
			endcase
		end
	end
endmodule
