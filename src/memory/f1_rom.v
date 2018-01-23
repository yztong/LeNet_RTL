//==================================================================================================
//  Filename      : f1_rom.v
//  Created On    : 2017-12-29 19:14:58
//  Last Modified : 2018-01-02 16:52:41
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : feature rom for conv layer1
//
//
//==================================================================================================

module f1_rom(/*autoport*/
//output
			f1_rdata,
//input
			f1_raddr,
			clk);
	input wire  [9:0] f1_raddr;

	output wire [7:0] f1_rdata;

	input wire clk;



//2 cycles delay
	
blk_mem_gen_f1_rom f1_rom (
  .clka(clk),    // input wire clka
  .addra(f1_raddr),  // input wire [9 : 0] addra
  .douta(f1_rdata)  // output wire [7 : 0] douta
);


endmodule 