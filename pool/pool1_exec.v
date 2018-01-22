//==================================================================================================
//  Filename      : pool1_exec.v
//  Created On    : 2018-01-02 17:16:08
//  Last Modified : 2018-01-07 15:48:49
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================

module pool1_exec(/*autoport*/
//output
			f3_1_wdata,
			f3_2_wdata,
			f3_3_wdata,
			f3_4_wdata,
			f3_5_wdata,
			f3_6_wdata,
//input
			clk,
			rst_n,
			f2_1_rdata,
			f2_2_rdata,
			f2_3_rdata,
			f2_4_rdata,
			f2_5_rdata,
			f2_6_rdata,
			pool1_clr);
	input  clk;
	input  rst_n;

	input wire  [15:0] 	 f2_1_rdata; 
	input wire  [15:0] 	 f2_2_rdata; 
	input wire  [15:0] 	 f2_3_rdata; 
	input wire  [15:0] 	 f2_4_rdata; 
	input wire  [15:0] 	 f2_5_rdata; 
	input wire  [15:0] 	 f2_6_rdata; 

	output wire [15:0]  f3_1_wdata;
	output wire [15:0]  f3_2_wdata;
	output wire [15:0]  f3_3_wdata;
	output wire [15:0]  f3_4_wdata;
	output wire [15:0]  f3_5_wdata;
	output wire [15:0]  f3_6_wdata;


	input wire pool1_clr;
pool_unit  u1(/*autoinst*/
			.d_out(f3_1_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_1_rdata[15:0]),
			.pool_clr(pool1_clr));
pool_unit  u2(/*autoinst*/
			.d_out(f3_2_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_2_rdata[15:0]),
			.pool_clr(pool1_clr));
pool_unit  u3(/*autoinst*/
			.d_out(f3_3_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_3_rdata[15:0]),
			.pool_clr(pool1_clr));
pool_unit  u4(/*autoinst*/
			.d_out(f3_4_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_4_rdata[15:0]),
			.pool_clr(pool1_clr));
pool_unit  u5(/*autoinst*/
			.d_out(f3_5_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_5_rdata[15:0]),
			.pool_clr(pool1_clr));
pool_unit  u6(/*autoinst*/
			.d_out(f3_6_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_6_rdata[15:0]),
			.pool_clr(pool1_clr));

endmodule 