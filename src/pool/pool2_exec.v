//==================================================================================================
//  Filename      : pool2_exec.v
//  Created On    : 2018-01-02 17:16:08
//  Last Modified : 2018-03-21 18:44:06
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
			f5_wdata,
//input
			clk,
			rst_n,
			f4_rdata,
			pool2_clr);
	input  	clk;
	input  	rst_n;

	input	[255:0]	f4_rdata;
	output	[255:0]	f5_wdata;
	input 	pool2_clr;
	generate
		genvar i;
		for (i = 0; i < 16; i = i + 1)
		begin:pool_unit_gen
			pool_unit  pool_unit(/*autoinst*/
			.d_out(f5_wdata[16*i+15:16*i]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f4_rdata[16*i+15:16*i]),
			.pool_clr(pool2_clr));
		end
	endgenerate
endmodule 