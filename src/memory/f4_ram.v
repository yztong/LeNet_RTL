//==================================================================================================
//  Filename      : f4_ram.v
//  Created On    : 2018-01-01 15:35:30
//  Last Modified : 2018-03-21 15:10:14
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//================================================================================================
module f4_ram(/*autoport*/
//output
			f4_1_rdata,
			f4_2_rdata,
			f4_3_rdata,
			f4_4_rdata,
			f4_5_rdata,
			f4_6_rdata,
			f4_7_rdata,
			f4_8_rdata,
			f4_9_rdata,
			f4_10_rdata,
			f4_11_rdata,
			f4_12_rdata,
			f4_13_rdata,
			f4_14_rdata,
			f4_15_rdata,
			f4_16_rdata,
//input
			clk,
			f4_1_wdata,
			f4_2_wdata,
			f4_3_wdata,
			f4_4_wdata,
			f4_5_wdata,
			f4_6_wdata,
			f4_7_wdata,
			f4_8_wdata,
			f4_9_wdata,
			f4_10_wdata,
			f4_11_wdata,
			f4_12_wdata,
			f4_13_wdata,
			f4_14_wdata,
			f4_15_wdata,
			f4_16_wdata,
			f4_wr_en,
			f4_waddr,
			f4_raddr);
	input clk;
//write side
	input [15:0] f4_1_wdata;
	input [15:0] f4_2_wdata;
	input [15:0] f4_3_wdata;
	input [15:0] f4_4_wdata;
	input [15:0] f4_5_wdata;
	input [15:0] f4_6_wdata;
	input [15:0] f4_7_wdata;
	input [15:0] f4_8_wdata;
	input [15:0] f4_9_wdata;
	input [15:0] f4_10_wdata;
	input [15:0] f4_11_wdata;
	input [15:0] f4_12_wdata;
	input [15:0] f4_13_wdata;
	input [15:0] f4_14_wdata;
	input [15:0] f4_15_wdata;
	input [15:0] f4_16_wdata;


	input 		  f4_wr_en;
	input [6:0]  f4_waddr;
//read side
	input [6:0]  f4_raddr;
	output[15:0] f4_1_rdata;
	output[15:0] f4_2_rdata;
	output[15:0] f4_3_rdata;
	output[15:0] f4_4_rdata;
	output[15:0] f4_5_rdata;
	output[15:0] f4_6_rdata;
	output[15:0] f4_7_rdata;
	output[15:0] f4_8_rdata;
	output[15:0] f4_9_rdata;
	output[15:0] f4_10_rdata;
	output[15:0] f4_11_rdata;
	output[15:0] f4_12_rdata;
	output[15:0] f4_13_rdata;
	output[15:0] f4_14_rdata;
	output[15:0] f4_15_rdata;
	output[15:0] f4_16_rdata;

	wire[255:0] f4_wdata,f4_rdata;
	blk_mem_gen_f4_ram f4_ram (
	  .clka(clk),    // input clka
	  .wea(f4_wr_en),      // input [0 : 0] wea
	  .addra(f4_waddr),  // input [6 : 0] addra
	  .dina(f4_wdata),    // input [255 : 0] dina
	  .clkb(clk),    // input clkb
	  .addrb(f4_raddr),  // input [6 : 0] addrb
	  .doutb(f4_rdata)  // output [255 : 0] doutb
	);
	assign f4_wdata = {f4_16_wdata,f4_15_wdata,f4_14_wdata,f4_13_wdata,
		f4_12_wdata,f4_11_wdata,f4_10_wdata,f4_9_wdata,f4_8_wdata,f4_7_wdata,
		f4_6_wdata,f4_5_wdata,f4_4_wdata,f4_3_wdata,f4_2_wdata,f4_1_wdata};
	assign f4_1_rdata = f4_rdata[15:0];
	assign f4_2_rdata = f4_rdata[31:16];
	assign f4_3_rdata = f4_rdata[47:32];
	assign f4_4_rdata = f4_rdata[63:48];
	assign f4_5_rdata = f4_rdata[79:64];
	assign f4_6_rdata = f4_rdata[95:80];
	assign f4_7_rdata = f4_rdata[111:96];
	assign f4_8_rdata = f4_rdata[127:112];
	assign f4_9_rdata = f4_rdata[143:128];
	assign f4_10_rdata = f4_rdata[159:144];
	assign f4_11_rdata = f4_rdata[175:160];
	assign f4_12_rdata = f4_rdata[191:176];
	assign f4_13_rdata = f4_rdata[207:192];
	assign f4_14_rdata = f4_rdata[223:208];
	assign f4_15_rdata = f4_rdata[239:224];
	assign f4_16_rdata = f4_rdata[255:240];

endmodule 