//==================================================================================================
//  Filename      : w7_rom.v
//  Created On    : 2018-01-08 12:17:27
//  Last Modified : 2018-01-26 16:19:02
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module w7_rom(/*autoport*/
//output
			w7_1_rdata,
			w7_2_rdata,
			w7_3_rdata,
			w7_4_rdata,
			w7_5_rdata,
			w7_6_rdata,
			w7_7_rdata,
			w7_8_rdata,
			w7_9_rdata,
			w7_10_rdata,
//input
			clk,
			w7_raddr);
	input		 clk;
	input  [6:0] w7_raddr;

  output [7:0] w7_1_rdata;
  output [7:0] w7_2_rdata;
  output [7:0] w7_3_rdata;
  output [7:0] w7_4_rdata;
  output [7:0] w7_5_rdata;
  output [7:0] w7_6_rdata;
  output [7:0] w7_7_rdata;
  output [7:0] w7_8_rdata;
  output [7:0] w7_9_rdata;
  output [7:0] w7_10_rdata;

  wire [79:0] w7_rdata;
  blk_mem_gen_w7_rom w7_rom (
    .clka(clk),    // input wire clka
    .addra(w7_raddr),  // input wire [6 : 0] addra
    .douta(w7_rdata)  // output wire [79 : 0] douta
  );
  assign w7_1_rdata = w7_rdata[7:0];
  assign w7_2_rdata = w7_rdata[15:8];
  assign w7_3_rdata = w7_rdata[23:16];
  assign w7_4_rdata = w7_rdata[31:24];
  assign w7_5_rdata = w7_rdata[39:32];
  assign w7_6_rdata = w7_rdata[47:40];
  assign w7_7_rdata = w7_rdata[55:48];
  assign w7_8_rdata = w7_rdata[63:56];
  assign w7_9_rdata = w7_rdata[71:64];
  assign w7_10_rdata = w7_rdata[79:72];

endmodule