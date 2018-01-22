//==================================================================================================
//  Filename      : fc3_exec.v
//  Created On    : 2018-01-06 14:59:59
//  Last Modified : 2018-01-22 13:59:51
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================


module fc3_exec(/*autoport*/
//output
			class0,
			class1,
			class2,
			class3,
			class4,
			class5,
			class6,
			class7,
			class8,
			class9,
//input
			clk,
			rst_n,
			f8_wr_en,
			mac5_1,
			mac5_2,
			mac5_3,
			mac5_4,
			mac5_5,
			mac5_6,
			mac5_7,
			mac5_8,
			mac5_9,
			mac5_10);

input clk;
input rst_n;

input f8_wr_en;
input [22:0] mac5_1;
input [22:0] mac5_2;
input [22:0] mac5_3;
input [22:0] mac5_4;
input [22:0] mac5_5;
input [22:0] mac5_6;
input [22:0] mac5_7;
input [22:0] mac5_8;
input [22:0] mac5_9;
input [22:0] mac5_10;

output [15:0]  class0;
output [15:0]  class1;
output [15:0]  class2;
output [15:0]  class3;
output [15:0]  class4;
output [15:0]  class5;
output [15:0]  class6;
output [15:0]  class7;
output [15:0]  class8;
output [15:0]  class9;



parameter b_1 = 16'b0000011001000101;
parameter b_2 = 16'b1111100101111001;
parameter b_3 = 16'b0000000001101010;
parameter b_4 = 16'b1111100111010010;
parameter b_5 = 16'b1111110001110001;
parameter b_6 = 16'b1111110100100000;
parameter b_7 = 16'b1111011010010100;
parameter b_8 = 16'b1111100001110001;
parameter b_9 = 16'b0000101110000110;
parameter b_10 = 16'b0000000101111101;






wire [15:0] fc3_d_out[9:0];
wire [15:0] fc3_b_in[9:0];
wire [22:0] fc3_d_in[9:0];
generate
	genvar i;
	for(i=0;i<10;i=i+1)begin:fc3_unit_gen
		fc_unit fc_unit(/*autoinst*/
			.d_out(fc3_d_out[i]),
			.clk(clk),
			.rst_n(rst_n),
			.d_in(fc3_d_in[i]),
			.b_in(fc3_b_in[i]),
			.wr_en(f8_wr_en));
	end
endgenerate


assign fc3_d_in[0] = mac5_1;
assign fc3_d_in[1] = mac5_2;
assign fc3_d_in[2] = mac5_3;
assign fc3_d_in[3] = mac5_4;
assign fc3_d_in[4] = mac5_5;
assign fc3_d_in[5] = mac5_6;
assign fc3_d_in[6] = mac5_7;
assign fc3_d_in[7] = mac5_8;
assign fc3_d_in[8] = mac5_9;
assign fc3_d_in[9] = mac5_10;

assign fc3_b_in[0] = b_1;
assign fc3_b_in[1] = b_2;
assign fc3_b_in[2] = b_3;
assign fc3_b_in[3] = b_4;
assign fc3_b_in[4] = b_5;
assign fc3_b_in[5] = b_6;
assign fc3_b_in[6] = b_7;
assign fc3_b_in[7] = b_8;
assign fc3_b_in[8] = b_9;
assign fc3_b_in[9] = b_10;

assign class0 = fc3_d_out[0];
assign class1 = fc3_d_out[1];
assign class2 = fc3_d_out[2];
assign class3 = fc3_d_out[3];
assign class4 = fc3_d_out[4];
assign class5 = fc3_d_out[5];
assign class6 = fc3_d_out[6];
assign class7 = fc3_d_out[7];
assign class8 = fc3_d_out[8];
assign class9 = fc3_d_out[9];
endmodule 

