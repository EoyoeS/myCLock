`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:20 03/16/2022 
// Design Name: 
// Module Name:    SEG7_LUT 
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

// ¹²Ñô¼«Æß¶ÎÏÔÊ¾ÒëÂëÆ÷
module SEG7_LUT(oSEG, iDIG);
	input [3:0] iDIG;
	output reg [6:0] oSEG;
	always @(iDIG) begin
		case(iDIG)
			4'h0: oSEG = 7'b100_0000; // ---a---
			4'h1: oSEG = 7'b111_1001; // |     |
			4'h2: oSEG = 7'b010_0100; // f     b
			4'h3: oSEG = 7'b011_0000; // |     |
			4'h4: oSEG = 7'b001_1001; // ---g---
			4'h5: oSEG = 7'b001_0010; // |     |
			4'h6: oSEG = 7'b000_0010; // e     c
			4'h7: oSEG = 7'b111_1000; // |     |
			4'h8: oSEG = 7'b000_0000; // ---d---
			4'h9: oSEG = 7'b001_1000;
			4'ha: oSEG = 7'b000_1000;
			4'hb: oSEG = 7'b111_1111;
			4'hc: oSEG = 7'b100_0110;
			4'hd: oSEG = 7'b010_0001;
			4'he: oSEG = 7'b000_0110;
			4'hf: oSEG = 7'b000_1100;
		endcase
	end
endmodule
