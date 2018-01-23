//==================================================================================================
//  Filename      : f4_ram.v
//  Created On    : 2018-01-01 15:35:30
//  Last Modified : 2018-01-07 20:17:47
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
	input wire [15:0] f4_1_wdata;
	input wire [15:0] f4_2_wdata;
	input wire [15:0] f4_3_wdata;
	input wire [15:0] f4_4_wdata;
	input wire [15:0] f4_5_wdata;
	input wire [15:0] f4_6_wdata;
	input wire [15:0] f4_7_wdata;
	input wire [15:0] f4_8_wdata;
	input wire [15:0] f4_9_wdata;
	input wire [15:0] f4_10_wdata;
	input wire [15:0] f4_11_wdata;
	input wire [15:0] f4_12_wdata;
	input wire [15:0] f4_13_wdata;
	input wire [15:0] f4_14_wdata;
	input wire [15:0] f4_15_wdata;
	input wire [15:0] f4_16_wdata;


	input wire 		  f4_wr_en;
	input wire [6:0]  f4_waddr;
//read side
	input wire [6:0]  f4_raddr;
	output wire[15:0] f4_1_rdata;
	output wire[15:0] f4_2_rdata;
	output wire[15:0] f4_3_rdata;
	output wire[15:0] f4_4_rdata;
	output wire[15:0] f4_5_rdata;
	output wire[15:0] f4_6_rdata;
	output wire[15:0] f4_7_rdata;
	output wire[15:0] f4_8_rdata;
	output wire[15:0] f4_9_rdata;
	output wire[15:0] f4_10_rdata;
	output wire[15:0] f4_11_rdata;
	output wire[15:0] f4_12_rdata;
	output wire[15:0] f4_13_rdata;
	output wire[15:0] f4_14_rdata;
	output wire[15:0] f4_15_rdata;
	output wire[15:0] f4_16_rdata;
/*
	reg[15:0]   mem1[195:0];
	reg[15:0]   mem2[195:0];
	reg[15:0]   mem3[195:0];
	reg[15:0]   mem4[195:0];
	reg[15:0]   mem5[195:0];
	reg[15:0]   mem6[195:0];
	
	/*always @(posedge clk ) begin
		if(f4_wr_en) begin
		mem1[f4_waddr] = f3_1_wdata;
		mem2[f4_waddr] = f3_2_wdata;
		mem3[f4_waddr] = f3_3_wdata;
		mem4[f4_waddr] = f3_4_wdata;
		mem5[f4_waddr] = f3_5_wdata;
		mem6[f4_waddr] = f3_6_wdata;
		end
	end

	assign f3_1_rdata = mem1[f3_raddr];
	assign f3_2_rdata = mem2[f3_raddr];
	assign f3_3_rdata = mem3[f3_raddr];
	assign f3_4_rdata = mem4[f3_raddr];
	assign f3_5_rdata = mem5[f3_raddr];
	assign f3_6_rdata = mem6[f3_raddr];
	*/
blk_mem_gen_f4_1_ram f4_1 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_1_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_1_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_2_ram f4_2 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_2_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_2_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_3_ram f4_3 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_3_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_3_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_4_ram f4_4 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_4_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_4_rdata)  // output wire [15 : 0] doutb
	); 
blk_mem_gen_f4_5_ram f4_5 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_5_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_5_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_6_ram f4_6 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_6_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_6_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_7_ram f4_7 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_7_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_7_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_8_ram f4_8 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_8_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_8_rdata)  // output wire [15 : 0] doutb
	);  
blk_mem_gen_f4_9_ram f4_9 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_9_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_9_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_10_ram f4_10 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_10_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_10_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_11_ram f4_11 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_11_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_11_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_12_ram f4_12 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_12_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_12_rdata)  // output wire [15 : 0] doutb
	);  
blk_mem_gen_f4_13_ram f4_13 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_13_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_13_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_14_ram f4_14 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_14_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_14_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_15_ram f4_15 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_15_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_15_rdata)  // output wire [15 : 0] doutb
	);
blk_mem_gen_f4_16_ram f4_16 (
	  .clka(clk),    // input wire clka
	  .wea(f4_wr_en),      // input wire [0 : 0] wea
	  .addra(f4_waddr),  // input wire [7 : 0] addra
	  .dina(f4_16_wdata),    // input wire [15 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .addrb(f4_raddr),  // input wire [7 : 0] addrb
	  .doutb(f4_16_rdata)  // output wire [15 : 0] doutb
	);    
endmodule 