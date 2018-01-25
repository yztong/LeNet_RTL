//==================================================================================================
//  Filename      : f1_rom.v
//  Created On    : 2017-12-29 19:14:58
//  Last Modified : 2018-01-25 18:14:57
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : feature rom for conv layer1
//
//
//==================================================================================================

module f1_ram(/*autoport*/
//output
			f1_rdata,
//input
			rclk,
			wclk,
			f1_wr_en,
			f1_waddr,
			f1_wdata,
			ena,
			f1_raddr);
input wire			rclk;
input wire			wclk;
input wire [3:0]    f1_wr_en;
input wire [31:0]   f1_waddr;
input wire [31:0]   f1_wdata;
input wire			ena;
input wire [9:0]   f1_raddr;
output wire [7:0]  f1_rdata; 



//2 cycles delay
blk_mem_gen_f1_ram f1_ram (
  .clka(wclk),    // input wire clka
  .ena(ena),  
  .wea(f1_wr_en),      // input wire [3 : 0] wea
  .addra(f1_waddr),  // input wire [31 : 0] addra
  .dina(f1_wdata),    // input wire [31 : 0] dina
  .clkb(rclk),    // input wire clkb
  .addrb({20'b0,f1_raddr,2'b0}),  // input wire [31 : 0] addrb
  .doutb(f1_rdata)  // output wire [31 : 0] doutb
);

endmodule 