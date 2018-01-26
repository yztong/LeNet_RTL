//==================================================================================================
//  Filename      : conv1_pulling1_ram.v
//  Created On    : 2017-12-28 14:56:33
//  Last Modified : 2018-01-26 15:26:15
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module f2_ram(/*autoport*/
//output
			f2_1_rdata,
			f2_2_rdata,
			f2_3_rdata,
			f2_4_rdata,
			f2_5_rdata,
			f2_6_rdata,
//input
			clk,
			f2_1_wdata,
			f2_2_wdata,
			f2_3_wdata,
			f2_4_wdata,
			f2_5_wdata,
			f2_6_wdata,
			f2_wr_en,
			f2_waddr,
			f2_raddr);
	input clk;
//write side
	input wire [15:0] f2_1_wdata;
	input wire [15:0] f2_2_wdata;
	input wire [15:0] f2_3_wdata;
	input wire [15:0] f2_4_wdata;
	input wire [15:0] f2_5_wdata;
	input wire [15:0] f2_6_wdata;

	input wire 		  f2_wr_en;
	input wire [9:0]  f2_waddr;
//read side
	input wire [9:0]  f2_raddr;
	output wire[15:0] f2_1_rdata;
	output wire[15:0] f2_2_rdata;
	output wire[15:0] f2_3_rdata;
	output wire[15:0] f2_4_rdata;
	output wire[15:0] f2_5_rdata;
	output wire[15:0] f2_6_rdata;


	wire [95:0] f2_wdata,f2_rdata;
	blk_mem_gen_f2_ram f2_ram (
	  .clka(clk),    // input wire clka
	  .wea(f2_wr_en),      // input wire [0 : 0] wea
	  .addra(f2_waddr),  // input wire [9 : 0] addra
	  .dina(f2_wdata),    // input wire [95 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f2_raddr),  // input wire [9 : 0] addrb
	  .doutb(f2_rdata)  // output wire [95 : 0] doutb
	);
	
	assign f2_wdata = {f2_6_wdata,f2_5_wdata,f2_4_wdata,f2_3_wdata,f2_2_wdata,f2_1_wdata};
	assign f2_1_rdata = f2_rdata[15:0];
	assign f2_2_rdata = f2_rdata[31:16];
	assign f2_3_rdata = f2_rdata[47:32];
	assign f2_4_rdata = f2_rdata[63:48];
	assign f2_5_rdata = f2_rdata[79:64];
	assign f2_6_rdata = f2_rdata[95:80];
endmodule 