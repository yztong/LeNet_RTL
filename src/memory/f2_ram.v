//==================================================================================================
//  Filename      : conv1_pulling1_ram.v
//  Created On    : 2017-12-28 14:56:33
//  Last Modified : 2018-01-06 19:56:06
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
/*
	reg[15:0]   mem1[783:0];
	reg[15:0]   mem2[783:0];
	reg[15:0]   mem3[783:0];
	reg[15:0]   mem4[783:0];
	reg[15:0]   mem5[783:0];
	reg[15:0]   mem6[783:0];

	always @(posedge clk ) begin
		if(f2_wr_en) begin
		mem1[f2_waddr] = f2_1_wdata;
		mem2[f2_waddr] = f2_2_wdata;
		mem3[f2_waddr] = f2_3_wdata;
		mem4[f2_waddr] = f2_4_wdata;
		mem5[f2_waddr] = f2_5_wdata;
		mem6[f2_waddr] = f2_6_wdata;
		end
	end
	//register stage for 2 cycles read delay
	reg [9:0] f2_raddr_r1,f2_raddr_r2;	
	always @(posedge clk)begin
		f2_raddr_r1 <= f2_raddr;
		f2_raddr_r2 <= f2_raddr_r1;
	end
	assign f2_1_rdata = mem1[f2_raddr_r2];
	assign f2_2_rdata = mem2[f2_raddr_r2];
	assign f2_3_rdata = mem3[f2_raddr_r2];
	assign f2_4_rdata = mem4[f2_raddr_r2];
	assign f2_5_rdata = mem5[f2_raddr_r2];
	assign f2_6_rdata = mem6[f2_raddr_r2];
*/	
	
	blk_mem_gen_f2_1_ram u1 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_1_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_1_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f2_2_ram u2 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_2_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_2_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f2_3_ram u3 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_3_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_3_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f2_4_ram u4 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_4_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_4_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f2_5_ram u5 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_5_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_5_rdata)  // output wire [15 : 0] doutb
    );
    	blk_mem_gen_f2_6_ram u6 (
      .clka(clk),    // input wire clka
      .wea(f2_wr_en),      // input wire [0 : 0] wea
      .addra(f2_waddr),  // input wire [9 : 0] addra
      .dina(f2_6_wdata),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(f2_raddr),  // input wire [9 : 0] addrb
      .doutb(f2_6_rdata)  // output wire [15 : 0] doutb
    );
endmodule 