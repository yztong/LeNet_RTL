//==================================================================================================
//  Filename      : top.v
//  Created On    : 2018-01-25 14:08:28
//  Last Modified : 2018-01-25 18:22:51
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module top(/*autoport*/
//inout
			DDR_addr,
			DDR_ba,
			DDR_cas_n,
			DDR_ck_n,
			DDR_ck_p,
			DDR_cke,
			DDR_cs_n,
			DDR_dm,
			DDR_dq,
			DDR_dqs_n,
			DDR_dqs_p,
			DDR_odt,
			DDR_ras_n,
			DDR_reset_n,
			DDR_we_n,
			FIXED_IO_ddr_vrn,
			FIXED_IO_ddr_vrp,
			FIXED_IO_mio,
			FIXED_IO_ps_clk,
			FIXED_IO_ps_porb,
			FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
/*autodef*/
wire ena;
wire bram_en_a_0;
wire rst_n;
wire DDR_reset_n;
wire FIXED_IO_ps_porb;
wire [31:0]DDR_dq;
wire FIXED_IO_ddr_vrp;
wire FIXED_IO_ps_srstb;
wire bd_clk;
wire [3:0]f1_wr_en;
wire done;
wire [3:0]bram_we_a_0;
wire [31:0]bram_wrdata_a_0;
wire DDR_odt;
wire [53:0]FIXED_IO_mio;
wire [3:0]DDR_dm;
wire FIXED_IO_ddr_vrn;
wire [14:0]bram_addr_a_0;
wire [0:0]peripheral_aresetn;
wire bram_clk_a_0;
wire FIXED_IO_ps_clk;
wire DDR_cs_n;
wire DDR_ck_p;
wire [3:0]DDR_dqs_n;
wire DDR_ras_n;
wire [31:0]f1_wdata;
wire [31:0]f1_waddr;
wire [14:0]DDR_addr;
wire DDR_cke;
wire sys_clk;
wire [2:0]DDR_ba;
wire [3:0]class_index;
wire start;
wire DDR_we_n;
wire [20:0]GPIO_1_tri_i;
wire FCLK_CLK1_0;
wire [0:0]GPIO_0_tri_o;
wire DDR_ck_n;
wire [3:0]DDR_dqs_p;
wire [15:0]class_value;
wire DDR_cas_n;

assign rst_n=peripheral_aresetn;
assign f1_wr_en = bram_we_a_0;
assign bd_clk=bram_clk_a_0;
assign start=GPIO_0_tri_o;
assign f1_wdata= bram_wrdata_a_0;
assign sys_clk= FCLK_CLK1_0;
assign f1_waddr=bram_addr_a_0;
assign GPIO_1_tri_i={class_value,class_index,done};
assign ena = bram_en_a_0;

design_1_wrapper design_1_wrapper(/*autoinst*/
			.DDR_addr(DDR_addr[14:0]),
			.DDR_ba(DDR_ba[2:0]),
			.DDR_cas_n(DDR_cas_n),
			.DDR_ck_n(DDR_ck_n),
			.DDR_ck_p(DDR_ck_p),
			.DDR_cke(DDR_cke),
			.DDR_cs_n(DDR_cs_n),
			.DDR_dm(DDR_dm[3:0]),
			.DDR_dq(DDR_dq[31:0]),
			.DDR_dqs_n(DDR_dqs_n[3:0]),
			.DDR_dqs_p(DDR_dqs_p[3:0]),
			.DDR_odt(DDR_odt),
			.DDR_ras_n(DDR_ras_n),
			.DDR_reset_n(DDR_reset_n),
			.DDR_we_n(DDR_we_n),
			.FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
			.FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
			.FIXED_IO_mio(FIXED_IO_mio[53:0]),
			.FIXED_IO_ps_clk(FIXED_IO_ps_clk),
			.FIXED_IO_ps_porb(FIXED_IO_ps_porb),
			.FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
			.FCLK_CLK1_0(FCLK_CLK1_0),
			.GPIO_0_tri_o(GPIO_0_tri_o[0:0]),
			.bram_addr_a_0(bram_addr_a_0[14:0]),
			.bram_clk_a_0(bram_clk_a_0),
			.bram_en_a_0(bram_en_a_0),
			.bram_we_a_0(bram_we_a_0[3:0]),
			.bram_wrdata_a_0(bram_wrdata_a_0[31:0]),
			.peripheral_aresetn(peripheral_aresetn[0:0]),
			.GPIO_1_tri_i(GPIO_1_tri_i[20:0]));

CNN_accelerator CNN_accelerator(/*autoinst*/
			.done(done),
			.class_value(class_value[15:0]),
			.class_index(class_index[3:0]),
			.sys_clk(sys_clk),
			.rst_n(rst_n),
			.bd_clk(bd_clk),
			.start(start),
			.ena(ena),
			.f1_wr_en(f1_wr_en[3:0]),
			.f1_waddr(f1_waddr[31:0]),
			.f1_wdata(f1_wdata[31:0]));
endmodule