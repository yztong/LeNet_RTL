//==================================================================================================
//  Filename      : f3_ram.v
//  Created On    : 2018-01-01 15:35:30
//  Last Modified : 2018-01-26 15:30:48
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//================================================================================================
module f3_ram(/*autoport*/
//output
			f3_1_rdata,
			f3_2_rdata,
			f3_3_rdata,
			f3_4_rdata,
			f3_5_rdata,
			f3_6_rdata,
//input
			clk,
			f3_1_wdata,
			f3_2_wdata,
			f3_3_wdata,
			f3_4_wdata,
			f3_5_wdata,
			f3_6_wdata,
			f3_wr_en,
			f3_waddr,
			f3_raddr);
	input clk;
//write side
	input wire [15:0] f3_1_wdata;
	input wire [15:0] f3_2_wdata;
	input wire [15:0] f3_3_wdata;
	input wire [15:0] f3_4_wdata;
	input wire [15:0] f3_5_wdata;
	input wire [15:0] f3_6_wdata;

	input wire 		  f3_wr_en;
	input wire [7:0]  f3_waddr;
//read side
	input wire [7:0]  f3_raddr;
	output wire[15:0] f3_1_rdata;
	output wire[15:0] f3_2_rdata;
	output wire[15:0] f3_3_rdata;
	output wire[15:0] f3_4_rdata;
	output wire[15:0] f3_5_rdata;
	output wire[15:0] f3_6_rdata;

	wire[95:0] f3_wdata,f3_rdata;
	blk_mem_gen_f3_ram f3_ram (
	  .clka(clk),    // input wire clka
	  .wea(f3_wr_en),      // input wire [0 : 0] wea
	  .addra(f3_waddr),  // input wire [7 : 0] addra
	  .dina(f3_wdata),    // input wire [95 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f3_raddr),  // input wire [7 : 0] addrb
	  .doutb(f3_rdata)  // output wire [95 : 0] doutb
	);
	assign f3_wdata = {f3_6_wdata,f3_5_wdata,f3_4_wdata,f3_3_wdata,f3_2_wdata,f3_1_wdata};
	assign f3_1_rdata = f3_rdata[15:0];
	assign f3_2_rdata = f3_rdata[31:16];
	assign f3_3_rdata = f3_rdata[47:32];
	assign f3_4_rdata = f3_rdata[63:48];
	assign f3_5_rdata = f3_rdata[79:64];
	assign f3_6_rdata = f3_rdata[95:80];
endmodule 