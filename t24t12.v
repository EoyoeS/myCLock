`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:47 03/24/2022 
// Design Name: 
// Module Name:    t24t12 
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
module t24t12(Trans, Hour24, Hour_t, Line, Hour12);
	input Trans;
	input [7:0] Hour24;
	output reg [7:0] Hour_t, Hour12;
	output reg [3:0] Line = 4'hb;
	always @(*) begin
		if (Hour24 != 0 && Hour24 <= 8'h12) begin
			Hour12 = Hour24;
			if (Hour24 == 8'h12) begin
				Line = 4'hf;
			end
			else begin
				Line = 4'ha;
			end
		end
		else begin
			if (Hour24 == 0) begin
				Hour12 = 8'h12;
				Line = 4'ha;
			end
			else if (Hour24 <= 8'h21 && Hour24 >= 8'h20) begin
				Hour12[7:4] = 0;
				Hour12[3:0] = 4'h8 + Hour24[3:0];
				Line = 4'hf;
			end
			else begin
				Hour12 = Hour24 - 8'h12;
				Line = 4'hf;
			end
		end
		if (~Trans) begin
			Hour_t = Hour24;
			Line = 4'hb;
		end
		else begin
			Hour_t = Hour12;
		end
	end
endmodule
