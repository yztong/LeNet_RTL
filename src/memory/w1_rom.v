//==================================================================================================
//  Filename      : weight_rom.v
//  Created On    : 2017-12-29 19:12:21
//  Last Modified : 2018-03-21 15:10:25
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
	output [7:0] w1_1_rdata;
	output [7:0] w1_2_rdata;
	output [7:0] w1_3_rdata;
	output [7:0] w1_4_rdata;
	output [7:0] w1_5_rdata;
	output [7:0] w1_6_rdata;
	input  [4:0] w1_raddr;

	input clk;
  wire [47:0] w1_rdata;
  dist_mem_gen_w1_rom w1_rom (
    .a(w1_raddr),        // input [4 : 0] a
    .clk(clk),    // input clk
    .qspo(w1_rdata)  // output [47 : 0] qspo
  );
  assign w1_1_rdata = w1_rdata[7:0];
  assign w1_2_rdata = w1_rdata[15:8];
  assign w1_3_rdata = w1_rdata[23:16];
  assign w1_4_rdata = w1_rdata[31:24];
  assign w1_5_rdata = w1_rdata[39:32];
  assign w1_6_rdata = w1_rdata[47:40];

endmodule 