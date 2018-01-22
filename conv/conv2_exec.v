//==================================================================================================
//  Filename      : conv2_exec.v
//  Created On    : 2018-01-02 13:26:16
//  Last Modified : 2018-01-22 13:55:09
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module conv2_exec(/*autoport*/
//output
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
//input
			mac2_1_1,
			mac2_1_2,
			mac2_1_3,
			mac2_1_4,
			mac2_1_5,
			mac2_1_6,
			mac2_2_1,
			mac2_2_2,
			mac2_2_3,
			mac2_2_4,
			mac2_2_5,
			mac2_2_6,
			mac2_3_1,
			mac2_3_2,
			mac2_3_3,
			mac2_3_4,
			mac2_3_5,
			mac2_3_6,
			mac2_4_1,
			mac2_4_2,
			mac2_4_3,
			mac2_4_4,
			mac2_4_5,
			mac2_4_6,
			mac2_5_1,
			mac2_5_2,
			mac2_5_3,
			mac2_5_4,
			mac2_5_5,
			mac2_5_6,
			mac2_6_1,
			mac2_6_2,
			mac2_6_3,
			mac2_6_4,
			mac2_6_5,
			mac2_6_6,
			mac2_7_1,
			mac2_7_2,
			mac2_7_3,
			mac2_7_4,
			mac2_7_5,
			mac2_7_6,
			mac2_8_1,
			mac2_8_2,
			mac2_8_3,
			mac2_8_4,
			mac2_8_5,
			mac2_8_6,
			mac2_9_1,
			mac2_9_2,
			mac2_9_3,
			mac2_9_4,
			mac2_9_5,
			mac2_9_6,
			mac2_10_1,
			mac2_10_2,
			mac2_10_3,
			mac2_10_4,
			mac2_10_5,
			mac2_10_6,
			mac2_11_1,
			mac2_11_2,
			mac2_11_3,
			mac2_11_4,
			mac2_11_5,
			mac2_11_6,
			mac2_12_1,
			mac2_12_2,
			mac2_12_3,
			mac2_12_4,
			mac2_12_5,
			mac2_12_6,
			mac2_13_1,
			mac2_13_2,
			mac2_13_3,
			mac2_13_4,
			mac2_13_5,
			mac2_13_6,
			mac2_14_1,
			mac2_14_2,
			mac2_14_3,
			mac2_14_4,
			mac2_14_5,
			mac2_14_6,
			mac2_15_1,
			mac2_15_2,
			mac2_15_3,
			mac2_15_4,
			mac2_15_5,
			mac2_15_6,
			mac2_16_1,
			mac2_16_2,
			mac2_16_3,
			mac2_16_4,
			mac2_16_5,
			mac2_16_6,
			clk,
			rst_n);

	input wire [22:0] mac2_1_1;
	input wire [22:0] mac2_1_2;
	input wire [22:0] mac2_1_3;
	input wire [22:0] mac2_1_4;
	input wire [22:0] mac2_1_5;
	input wire [22:0] mac2_1_6;

	input wire [22:0] mac2_2_1;
	input wire [22:0] mac2_2_2;
	input wire [22:0] mac2_2_3;
	input wire [22:0] mac2_2_4;
	input wire [22:0] mac2_2_5;
	input wire [22:0] mac2_2_6;

	input wire [22:0] mac2_3_1;
	input wire [22:0] mac2_3_2;
	input wire [22:0] mac2_3_3;
	input wire [22:0] mac2_3_4;
	input wire [22:0] mac2_3_5;
	input wire [22:0] mac2_3_6;

	input wire [22:0] mac2_4_1;
	input wire [22:0] mac2_4_2;
	input wire [22:0] mac2_4_3;
	input wire [22:0] mac2_4_4;
	input wire [22:0] mac2_4_5;
	input wire [22:0] mac2_4_6;

	input wire [22:0] mac2_5_1;
	input wire [22:0] mac2_5_2;
	input wire [22:0] mac2_5_3;
	input wire [22:0] mac2_5_4;
	input wire [22:0] mac2_5_5;
	input wire [22:0] mac2_5_6;

	input wire [22:0] mac2_6_1;
	input wire [22:0] mac2_6_2;
	input wire [22:0] mac2_6_3;
	input wire [22:0] mac2_6_4;
	input wire [22:0] mac2_6_5;
	input wire [22:0] mac2_6_6;

	input wire [22:0] mac2_7_1;
	input wire [22:0] mac2_7_2;
	input wire [22:0] mac2_7_3;
	input wire [22:0] mac2_7_4;
	input wire [22:0] mac2_7_5;
	input wire [22:0] mac2_7_6;

	input wire [22:0] mac2_8_1;
	input wire [22:0] mac2_8_2;
	input wire [22:0] mac2_8_3;
	input wire [22:0] mac2_8_4;
	input wire [22:0] mac2_8_5;
	input wire [22:0] mac2_8_6;

	input wire [22:0] mac2_9_1;
	input wire [22:0] mac2_9_2;
	input wire [22:0] mac2_9_3;
	input wire [22:0] mac2_9_4;
	input wire [22:0] mac2_9_5;
	input wire [22:0] mac2_9_6;

	input wire [22:0] mac2_10_1;
	input wire [22:0] mac2_10_2;
	input wire [22:0] mac2_10_3;
	input wire [22:0] mac2_10_4;
	input wire [22:0] mac2_10_5;
	input wire [22:0] mac2_10_6;

	input wire [22:0] mac2_11_1;
	input wire [22:0] mac2_11_2;
	input wire [22:0] mac2_11_3;
	input wire [22:0] mac2_11_4;
	input wire [22:0] mac2_11_5;
	input wire [22:0] mac2_11_6;

	input wire [22:0] mac2_12_1;
	input wire [22:0] mac2_12_2;
	input wire [22:0] mac2_12_3;
	input wire [22:0] mac2_12_4;
	input wire [22:0] mac2_12_5;
	input wire [22:0] mac2_12_6;

	input wire [22:0] mac2_13_1;
	input wire [22:0] mac2_13_2;
	input wire [22:0] mac2_13_3;
	input wire [22:0] mac2_13_4;
	input wire [22:0] mac2_13_5;
	input wire [22:0] mac2_13_6;

	input wire [22:0] mac2_14_1;
	input wire [22:0] mac2_14_2;
	input wire [22:0] mac2_14_3;
	input wire [22:0] mac2_14_4;
	input wire [22:0] mac2_14_5;
	input wire [22:0] mac2_14_6;

	input wire [22:0] mac2_15_1;
	input wire [22:0] mac2_15_2;
	input wire [22:0] mac2_15_3;
	input wire [22:0] mac2_15_4;
	input wire [22:0] mac2_15_5;
	input wire [22:0] mac2_15_6;

	input wire [22:0] mac2_16_1;
	input wire [22:0] mac2_16_2;
	input wire [22:0] mac2_16_3;
	input wire [22:0] mac2_16_4;
	input wire [22:0] mac2_16_5;
	input wire [22:0] mac2_16_6;
	

	input clk;
	input rst_n;

	output wire [15:0] f4_1_wdata;
	output wire [15:0] f4_2_wdata;
	output wire [15:0] f4_3_wdata;
	output wire [15:0] f4_4_wdata;
	output wire [15:0] f4_5_wdata;
	output wire [15:0] f4_6_wdata;
	output wire [15:0] f4_7_wdata;
	output wire [15:0] f4_8_wdata;
	output wire [15:0] f4_9_wdata;
	output wire [15:0] f4_10_wdata;
	output wire [15:0] f4_11_wdata;
	output wire [15:0] f4_12_wdata;
	output wire [15:0] f4_13_wdata;
	output wire [15:0] f4_14_wdata;
	output wire [15:0] f4_15_wdata;
	output wire [15:0] f4_16_wdata;


parameter b_1 = 16'b0000001100101101;
parameter b_2 = 16'b1111111010111110;
parameter b_3 = 16'b0000000010100000;
parameter b_4 = 16'b1111100101000010;
parameter b_5 = 16'b1111111011101010;
parameter b_6 = 16'b1111011001101101;
parameter b_7 = 16'b1111111111100000;
parameter b_8 = 16'b1111110100101000;
parameter b_9 = 16'b0000000011011001;
parameter b_10 = 16'b1111010010111100;
parameter b_11 = 16'b1111100011001010;
parameter b_12 = 16'b1111011101010010;
parameter b_13 = 16'b1111100100100110;
parameter b_14 = 16'b1111110010101111;
parameter b_15 = 16'b1111110111000000;
parameter b_16 = 16'b1111011100110000;




wire [22:0] mac2[95:0];
wire [22:0] d_in[15:0];
wire [15:0] d_out[15:0];
wire [15:0]  b_in[15:0];
generate
	genvar k;
	for(k=0;k<16;k=k+1) begin:loop3
		channel_adder channel_adder(/*autoinst*/
			.result(d_in[k]),
			.clk(clk),
			.rst_n(rst_n),
			.d1(mac2[k*6+0]),
			.d2(mac2[k*6+1]),
			.d3(mac2[k*6+2]),
			.d4(mac2[k*6+3]),
			.d5(mac2[k*6+4]),
			.d6(mac2[k*6+5]));
		conv_unit conv_unit(/*autoinst*/
			.d_out(d_out[k]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(d_in[k]),
			.b_in(b_in[k]));
	end
endgenerate

assign mac2[0] =  mac2_1_1;
assign mac2[1] =  mac2_1_2;
assign mac2[2] =  mac2_1_3;
assign mac2[3] =  mac2_1_4;
assign mac2[4] =  mac2_1_5;
assign mac2[5] =  mac2_1_6;

assign mac2[6] =  mac2_2_1;
assign mac2[7] =  mac2_2_2;
assign mac2[8] =  mac2_2_3;
assign mac2[9] =  mac2_2_4;
assign mac2[10] =  mac2_2_5;
assign mac2[11] =  mac2_2_6;

assign mac2[12] =  mac2_3_1;
assign mac2[13] =  mac2_3_2;
assign mac2[14] =  mac2_3_3;
assign mac2[15] =  mac2_3_4;
assign mac2[16] =  mac2_3_5;
assign mac2[17] =  mac2_3_6;

assign mac2[18] =  mac2_4_1;
assign mac2[19] =  mac2_4_2;
assign mac2[20] =  mac2_4_3;
assign mac2[21] =  mac2_4_4;
assign mac2[22] =  mac2_4_5;
assign mac2[23] =  mac2_4_6;

assign mac2[24] =  mac2_5_1;
assign mac2[25] =  mac2_5_2;
assign mac2[26] =  mac2_5_3;
assign mac2[27] =  mac2_5_4;
assign mac2[28] =  mac2_5_5;
assign mac2[29] =  mac2_5_6;

assign mac2[30] =  mac2_6_1;
assign mac2[31] =  mac2_6_2;
assign mac2[32] =  mac2_6_3;
assign mac2[33] =  mac2_6_4;
assign mac2[34] =  mac2_6_5;
assign mac2[35] =  mac2_6_6;

assign mac2[36] =  mac2_7_1;
assign mac2[37] =  mac2_7_2;
assign mac2[38] =  mac2_7_3;
assign mac2[39] =  mac2_7_4;
assign mac2[40] =  mac2_7_5;
assign mac2[41] =  mac2_7_6;

assign mac2[42] =  mac2_8_1;
assign mac2[43] =  mac2_8_2;
assign mac2[44] =  mac2_8_3;
assign mac2[45] =  mac2_8_4;
assign mac2[46] =  mac2_8_5;
assign mac2[47] =  mac2_8_6;

assign mac2[48] = mac2_9_1;
assign mac2[49] = mac2_9_2;
assign mac2[50] = mac2_9_3;
assign mac2[51] = mac2_9_4;
assign mac2[52] = mac2_9_5;
assign mac2[53] = mac2_9_6;

assign mac2[54] = mac2_10_1;
assign mac2[55] = mac2_10_2;
assign mac2[56] = mac2_10_3;
assign mac2[57] = mac2_10_4;
assign mac2[58] = mac2_10_5;
assign mac2[59] = mac2_10_6;

assign mac2[60] = mac2_11_1;
assign mac2[61] = mac2_11_2;
assign mac2[62] = mac2_11_3;
assign mac2[63] = mac2_11_4;
assign mac2[64] = mac2_11_5;
assign mac2[65] = mac2_11_6;

assign mac2[66] = mac2_12_1;
assign mac2[67] = mac2_12_2;
assign mac2[68] = mac2_12_3;
assign mac2[69] = mac2_12_4;
assign mac2[70] = mac2_12_5;
assign mac2[71] = mac2_12_6;

assign mac2[72] = mac2_13_1;
assign mac2[73] = mac2_13_2;
assign mac2[74] = mac2_13_3;
assign mac2[75] = mac2_13_4;
assign mac2[76] = mac2_13_5;
assign mac2[77] = mac2_13_6;

assign mac2[78] = mac2_14_1;
assign mac2[79] = mac2_14_2;
assign mac2[80] = mac2_14_3;
assign mac2[81] = mac2_14_4;
assign mac2[82] = mac2_14_5;
assign mac2[83] = mac2_14_6;

assign mac2[84] = mac2_15_1;
assign mac2[85] = mac2_15_2;
assign mac2[86] = mac2_15_3;
assign mac2[87] = mac2_15_4;
assign mac2[88] = mac2_15_5;
assign mac2[89] = mac2_15_6;

assign mac2[90] = mac2_16_1;
assign mac2[91] = mac2_16_2;
assign mac2[92] = mac2_16_3;
assign mac2[93] = mac2_16_4;
assign mac2[94] = mac2_16_5;
assign mac2[95] = mac2_16_6;

assign f4_1_wdata = d_out[0];
assign f4_2_wdata = d_out[1];
assign f4_3_wdata = d_out[2];
assign f4_4_wdata = d_out[3];
assign f4_5_wdata = d_out[4];
assign f4_6_wdata = d_out[5];
assign f4_7_wdata = d_out[6];
assign f4_8_wdata = d_out[7];
assign f4_9_wdata = d_out[8];
assign f4_10_wdata = d_out[9];
assign f4_11_wdata = d_out[10];
assign f4_12_wdata = d_out[11];
assign f4_13_wdata = d_out[12];
assign f4_14_wdata = d_out[13];
assign f4_15_wdata = d_out[14];
assign f4_16_wdata = d_out[15];

assign b_in[0] = b_1;
assign b_in[1] = b_2;
assign b_in[2] = b_3;
assign b_in[3] = b_4;
assign b_in[4] = b_5;
assign b_in[5] = b_6;
assign b_in[6] = b_7;
assign b_in[7] = b_8;
assign b_in[8] = b_9;
assign b_in[9] = b_10;
assign b_in[10] = b_11;
assign b_in[11] = b_12;
assign b_in[12] = b_13;
assign b_in[13] = b_14;
assign b_in[14] = b_15;
assign b_in[15] = b_16;

endmodule 