//==================================================================================================
//  Filename      : f3_ram.v
//  Created On    : 2018-01-01 15:35:30
//  Last Modified : 2018-01-07 16:06:41
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
/*
	reg[15:0]   mem1[195:0];
	reg[15:0]   mem2[195:0];
	reg[15:0]   mem3[195:0];
	reg[15:0]   mem4[195:0];
	reg[15:0]   mem5[195:0];
	reg[15:0]   mem6[195:0];

	always @(posedge clk ) begin
		if(f3_wr_en) begin
		mem1[f3_waddr] = f3_1_wdata;
		mem2[f3_waddr] = f3_2_wdata;
		mem3[f3_waddr] = f3_3_wdata;
		mem4[f3_waddr] = f3_4_wdata;
		mem5[f3_waddr] = f3_5_wdata;
		mem6[f3_waddr] = f3_6_wdata;
		end
	end

	assign f3_1_rdata = mem1[f3_raddr];
	assign f3_2_rdata = mem2[f3_raddr];
	assign f3_3_rdata = mem3[f3_raddr];
	assign f3_4_rdata = mem4[f3_raddr];
	assign f3_5_rdata = mem5[f3_raddr];
	assign f3_6_rdata = mem6[f3_raddr];
*/
	blk_mem_gen_f3_1_ram f3_1 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_1_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_1_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f3_2_ram f3_2 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_2_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_2_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f3_3_ram f3_3 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_3_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_3_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f3_4_ram f3_4 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_4_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_4_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f3_5_ram f3_5 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_5_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_5_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f3_6_ram f3_6 (
      .clka(clk),    // input wire clka
      .wea(f3_wr_en),      // input wire [0 : 0] wea
      .addra(f3_waddr),  // input wire [7 : 0] addra
      .dina(f3_6_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f3_raddr),  // input wire [7 : 0] addrb
      .doutb(f3_6_rdata)  // output wire [15 : 0] doutb
    );
endmodule 