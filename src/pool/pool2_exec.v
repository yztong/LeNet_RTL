//==================================================================================================
//  Filename      : pool2_exec.v
//  Created On    : 2018-01-02 17:16:08
//  Last Modified : 2018-03-21 15:20:19
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================

module pool2_exec(/*autoport*/
//output
			f5_1_wdata,
			f5_2_wdata,
			f5_3_wdata,
			f5_4_wdata,
			f5_5_wdata,
			f5_6_wdata,
			f5_7_wdata,
			f5_8_wdata,
			f5_9_wdata,
			f5_10_wdata,
			f5_11_wdata,
			f5_12_wdata,
			f5_13_wdata,
			f5_14_wdata,
			f5_15_wdata,
			f5_16_wdata,
//input
			clk,
			rst_n,
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
			pool2_clr);
	input  	clk;
	input  	rst_n;

	input  [15:0] 	 f4_1_rdata; 
	input  [15:0] 	 f4_2_rdata; 
	input  [15:0] 	 f4_3_rdata; 
	input  [15:0] 	 f4_4_rdata; 
	input  [15:0] 	 f4_5_rdata; 
	input  [15:0] 	 f4_6_rdata; 
	input  [15:0] 	 f4_7_rdata;
	input  [15:0] 	 f4_8_rdata;
	input  [15:0] 	 f4_9_rdata;
	input  [15:0] 	 f4_10_rdata;
	input  [15:0] 	 f4_11_rdata;
	input  [15:0] 	 f4_12_rdata;
	input  [15:0] 	 f4_13_rdata;
	input  [15:0] 	 f4_14_rdata;
	input  [15:0] 	 f4_15_rdata;
	input  [15:0] 	 f4_16_rdata;

	output  [15:0] 	 f5_1_wdata; 
	output  [15:0] 	 f5_2_wdata; 
	output  [15:0] 	 f5_3_wdata; 
	output  [15:0] 	 f5_4_wdata; 
	output  [15:0] 	 f5_5_wdata; 
	output  [15:0] 	 f5_6_wdata; 
	output  [15:0] 	 f5_7_wdata;
	output  [15:0] 	 f5_8_wdata;
	output  [15:0] 	 f5_9_wdata;
	output  [15:0] 	 f5_10_wdata;
	output  [15:0] 	 f5_11_wdata;
	output  [15:0] 	 f5_12_wdata;
	output  [15:0] 	 f5_13_wdata;
	output  [15:0] 	 f5_14_wdata;
	output  [15:0] 	 f5_15_wdata;
	output  [15:0] 	 f5_16_wdata;


	input 	pool2_clr;
pool_unit  u1(/*autoinst*/
			.d_out(f5_1_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_1_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u2(/*autoinst*/
			.d_out(f5_2_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_2_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u3(/*autoinst*/
			.d_out(f5_3_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_3_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u4(/*autoinst*/
			.d_out(f5_4_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_4_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u5(/*autoinst*/
			.d_out(f5_5_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_5_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u6(/*autoinst*/
			.d_out(f5_6_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_6_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u7(/*autoinst*/
			.d_out(f5_7_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_7_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u8(/*autoinst*/
			.d_out(f5_8_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_8_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u9(/*autoinst*/
			.d_out(f5_9_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_9_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u10(/*autoinst*/
			.d_out(f5_10_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_10_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u11(/*autoinst*/
			.d_out(f5_11_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_11_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u12(/*autoinst*/
			.d_out(f5_12_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_12_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u13(/*autoinst*/
			.d_out(f5_13_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_13_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u14(/*autoinst*/
			.d_out(f5_14_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_14_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u15(/*autoinst*/
			.d_out(f5_15_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_15_rdata[15:0]),
			.pool_clr(pool2_clr));
pool_unit  u16(/*autoinst*/
			.d_out(f5_16_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_16_rdata[15:0]),
			.pool_clr(pool2_clr));
endmodule 