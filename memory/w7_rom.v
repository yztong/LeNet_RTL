//==================================================================================================
//  Filename      : w7_rom.v
//  Created On    : 2018-01-08 12:17:27
//  Last Modified : 2018-01-08 12:20:02
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


    blk_mem_gen_w7_1_rom w7_1 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_1_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_2_rom w7_2 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_2_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_3_rom w7_3 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_3_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_4_rom w7_4 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_4_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_5_rom w7_5 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_5_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_6_rom w7_6 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_6_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_7_rom w7_7 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_7_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_8_rom w7_8 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_8_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_9_rom w7_9 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_9_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w7_10_rom w7_10 (
  .clka(clk),    // input wire clka
  .addra(w7_raddr),  // input wire [6 : 0] addra
  .douta(w7_10_rdata)  // output wire [7 : 0] douta
);

endmodule