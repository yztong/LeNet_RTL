//==================================================================================================
//  Filename      : weight_rom.v
//  Created On    : 2017-12-29 19:12:21
//  Last Modified : 2018-01-06 16:36:55
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : weights rom for conv layer1
//
//
//==================================================================================================

module w1_rom(/*autoport*/
//output
			w1_1_rdata,
			w1_2_rdata,
			w1_3_rdata,
			w1_4_rdata,
			w1_5_rdata,
			w1_6_rdata,
//input
			w1_raddr,
			clk);
	output wire [7:0] w1_1_rdata;
	output wire [7:0] w1_2_rdata;
	output wire [7:0] w1_3_rdata;
	output wire [7:0] w1_4_rdata;
	output wire [7:0] w1_5_rdata;
	output wire [7:0] w1_6_rdata;
	input wire  [4:0] w1_raddr;

	input wire clk;

dist_mem_gen_w1_1_rom w1_1 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_1_rdata)  // output wire [7 : 0] qspo
);
dist_mem_gen_w1_2_rom w1_2 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_2_rdata)  // output wire [7 : 0] qspo
);
dist_mem_gen_w1_3_rom w1_3 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_3_rdata)  // output wire [7 : 0] qspo
);
dist_mem_gen_w1_4_rom w1_4 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_4_rdata)  // output wire [7 : 0] qspo
);
dist_mem_gen_w1_5_rom w1_5 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_5_rdata)  // output wire [7 : 0] qspo
);
dist_mem_gen_w1_6_rom w1_6 (
  .a(w1_raddr),        // input wire [4 : 0] a
  .clk(clk),    // input wire clk
  .qspo(w1_6_rdata)  // output wire [7 : 0] qspo
);

endmodule 