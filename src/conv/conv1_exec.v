//==================================================================================================
//  Filename      : conv_exec.v
//  Created On    : 2017-12-29 19:27:47
//  Last Modified : 2018-01-22 13:52:12
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module conv1_exec(/*autoport*/
//output
			f2_1_wdata,
			f2_2_wdata,
			f2_3_wdata,
			f2_4_wdata,
			f2_5_wdata,
			f2_6_wdata,
//input
			clk,
			rst_n,
			mac1_1,
			mac1_2,
			mac1_3,
			mac1_4,
			mac1_5,
			mac1_6);
	input wire clk;
	input wire rst_n;


	
	input wire  [22:0] mac1_1;
	input wire  [22:0] mac1_2;
	input wire  [22:0] mac1_3;
	input wire  [22:0] mac1_4;
	input wire  [22:0] mac1_5;
	input wire  [22:0] mac1_6;

	output wire [15:0] f2_1_wdata;
	output wire [15:0] f2_2_wdata;
	output wire [15:0] f2_3_wdata;
	output wire [15:0] f2_4_wdata;
	output wire [15:0] f2_5_wdata;
	output wire [15:0] f2_6_wdata;

parameter b_1 = 16'b0000010111101010;
parameter b_2 = 16'b1111101111001000;
parameter b_3 = 16'b0000000000101011;
parameter b_4 = 16'b1111111000100110;
parameter b_5 = 16'b1111100100101110;
parameter b_6 = 16'b0000000001101010;
wire [15:0]  d_out[6:1];
wire [15:0]  b_in [6:1];
wire [22:0]  d_in [6:1];
generate
	genvar i;
	for(i=1;i<7;i=i+1) begin:conv_unit_gen
	conv_unit conv_unit(/*autoinst*/
			.d_out(d_out[i]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(d_in[i]),
			.b_in(b_in[i]));
	end

endgenerate

assign d_in[1] = mac1_1;
assign d_in[2] = mac1_2;
assign d_in[3] = mac1_3;
assign d_in[4] = mac1_4;
assign d_in[5] = mac1_5;
assign d_in[6] = mac1_6;

assign  f2_1_wdata = d_out[1] ;
assign  f2_2_wdata = d_out[2] ;
assign  f2_3_wdata = d_out[3] ;
assign  f2_4_wdata = d_out[4] ;
assign  f2_5_wdata = d_out[5] ;
assign  f2_6_wdata = d_out[6] ;

// bias initial
assign b_in[1] = b_1;
assign b_in[2] = b_2;
assign b_in[3] = b_3;
assign b_in[4] = b_4;
assign b_in[5] = b_5;
assign b_in[6] = b_6;
endmodule 