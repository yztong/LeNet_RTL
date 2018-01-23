//==================================================================================================
//  Filename      : f5_ram.v
//  Created On    : 2018-01-07 20:39:04
//  Last Modified : 2018-01-08 20:31:45
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module f5_ram(/*autoport*/
//output
			f5_rdata,
//input
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
			clk,
			f5_waddr,
			f5_wr_en,
			f5_sel,
			f5_raddr);

	input wire  [15:0] 	 f5_1_wdata; 
	input wire  [15:0] 	 f5_2_wdata; 
	input wire  [15:0] 	 f5_3_wdata; 
	input wire  [15:0] 	 f5_4_wdata; 
	input wire  [15:0] 	 f5_5_wdata; 
	input wire  [15:0] 	 f5_6_wdata; 
	input wire  [15:0] 	 f5_7_wdata;
	input wire  [15:0] 	 f5_8_wdata;
	input wire  [15:0] 	 f5_9_wdata;
	input wire  [15:0] 	 f5_10_wdata;
	input wire  [15:0] 	 f5_11_wdata;
	input wire  [15:0] 	 f5_12_wdata;
	input wire  [15:0] 	 f5_13_wdata;
	input wire  [15:0] 	 f5_14_wdata;
	input wire  [15:0] 	 f5_15_wdata;
	input wire  [15:0] 	 f5_16_wdata;

	input wire clk;
	input wire [4:0]  f5_waddr;
	input wire        f5_wr_en;
	input wire [3:0]  f5_sel;
	input wire [4:0]  f5_raddr;

	output wire [15:0] f5_rdata;


wire [15:0] f5_1_rdata;
wire [15:0] f5_2_rdata;
wire [15:0] f5_3_rdata;
wire [15:0] f5_4_rdata;
wire [15:0] f5_5_rdata;
wire [15:0] f5_6_rdata;
wire [15:0] f5_7_rdata;
wire [15:0] f5_8_rdata;
wire [15:0] f5_9_rdata;
wire [15:0] f5_10_rdata;
wire [15:0] f5_11_rdata;
wire [15:0] f5_12_rdata;
wire [15:0] f5_13_rdata;
wire [15:0] f5_14_rdata;
wire [15:0] f5_15_rdata;
wire [15:0] f5_16_rdata;

dist_mem_gen_f5_1_ram f5_1 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_1_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_1_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_2_ram f5_2 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_2_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_2_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_3_ram f5_3 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_3_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_3_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_4_ram f5_4 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_4_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_4_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_5_ram f5_5 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_5_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_5_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_6_ram f5_6 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_6_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_6_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_7_ram f5_7 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_7_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_7_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_8_ram f5_8 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_8_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_8_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_9_ram f5_9 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_9_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_9_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_10_ram f5_10 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_10_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_10_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_11_ram f5_11 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_11_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_11_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_12_ram f5_12 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_12_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_12_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_13_ram f5_13 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_13_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_13_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_14_ram f5_14 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_14_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_14_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_15_ram f5_15 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_15_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_15_rdata)  // output wire [15 : 0] qdpo
);
dist_mem_gen_f5_16_ram f5_16 (
  .a(f5_waddr),        // input wire [4 : 0] a
  .d(f5_16_wdata),        // input wire [15 : 0] d
  .dpra(f5_raddr),  // input wire [4 : 0] dpra
  .clk(clk),    // input wire clk
  .we(f5_wr_en),      // input wire we
  .qdpo(f5_16_rdata)  // output wire [15 : 0] qdpo
);

reg[3:0] f5_sel_r1,f5_sel_r2;
always@(posedge clk)begin
  f5_sel_r1 <= f5_sel;
  f5_sel_r2 <= f5_sel_r1;
end


reg[15:0] f5_rdata_temp;
always@(posedge clk)begin
	case(f5_sel_r2)
    4'd0:f5_rdata_temp = f5_1_rdata;
    4'd1:f5_rdata_temp = f5_2_rdata;
    4'd2:f5_rdata_temp = f5_3_rdata;
    4'd3:f5_rdata_temp = f5_4_rdata;
    4'd4:f5_rdata_temp = f5_5_rdata;
    4'd5:f5_rdata_temp = f5_6_rdata;
    4'd6:f5_rdata_temp = f5_7_rdata;
    4'd7:f5_rdata_temp = f5_8_rdata;
    4'd8:f5_rdata_temp = f5_9_rdata;
    4'd9:f5_rdata_temp = f5_10_rdata;
    4'd10:f5_rdata_temp = f5_11_rdata;
    4'd11:f5_rdata_temp = f5_12_rdata;
    4'd12:f5_rdata_temp = f5_13_rdata;
    4'd13:f5_rdata_temp = f5_14_rdata;
    4'd14:f5_rdata_temp = f5_15_rdata;
    4'd15:f5_rdata_temp = f5_16_rdata;
	endcase
end

assign f5_rdata = f5_rdata_temp;
endmodule