//==================================================================================================
//  Filename      : pool1_exec.v
//  Created On    : 2018-01-02 17:16:08
//  Last Modified : 2018-03-21 18:41:59
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
			f2_rdata,
//input
			clk,
			rst_n,
			f3_wdata,
			pool1_clr);
	input  	clk;
	input  	rst_n;

	input	[95:0]	f3_wdata;
	output	[95:0] 	f2_rdata;
	input 	pool1_clr;

	generate
		genvar i;
		for (i = 0; i < 6; i = i + 1)
		begin:pool_unit_gen
			pool_unit  pool_unit(/*autoinst*/
			.d_out(f3_wdata[16*i+15:16*i]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(f2_rdata[16*i+15:16*i]),
			.pool_clr(pool1_clr));
		end
	endgenerate


endmodule 