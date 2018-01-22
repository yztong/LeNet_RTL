//==================================================================================================
//  Filename      : w6_rom.v
//  Created On    : 2018-01-08 12:12:47
//  Last Modified : 2018-01-08 22:35:33
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module w6_rom(/*autoport*/
//output
      w6_1_rdata,
      w6_2_rdata,
      w6_3_rdata,
      w6_4_rdata,
      w6_5_rdata,
      w6_6_rdata,
      w6_7_rdata,
      w6_8_rdata,
      w6_9_rdata,
      w6_10_rdata,
      w6_11_rdata,
      w6_12_rdata,
      w6_13_rdata,
      w6_14_rdata,
      w6_15_rdata,
      w6_16_rdata,
      w6_17_rdata,
      w6_18_rdata,
      w6_19_rdata,
      w6_20_rdata,
      w6_21_rdata,
      w6_22_rdata,
      w6_23_rdata,
      w6_24_rdata,
      w6_25_rdata,
      w6_26_rdata,
      w6_27_rdata,
      w6_28_rdata,
      w6_29_rdata,
      w6_30_rdata,
      w6_31_rdata,
      w6_32_rdata,
      w6_33_rdata,
      w6_34_rdata,
      w6_35_rdata,
      w6_36_rdata,
      w6_37_rdata,
      w6_38_rdata,
      w6_39_rdata,
      w6_40_rdata,
      w6_41_rdata,
      w6_42_rdata,
      w6_43_rdata,
      w6_44_rdata,
      w6_45_rdata,
      w6_46_rdata,
      w6_47_rdata,
      w6_48_rdata,
      w6_49_rdata,
      w6_50_rdata,
      w6_51_rdata,
      w6_52_rdata,
      w6_53_rdata,
      w6_54_rdata,
      w6_55_rdata,
      w6_56_rdata,
      w6_57_rdata,
      w6_58_rdata,
      w6_59_rdata,
      w6_60_rdata,
      w6_61_rdata,
      w6_62_rdata,
      w6_63_rdata,
      w6_64_rdata,
      w6_65_rdata,
      w6_66_rdata,
      w6_67_rdata,
      w6_68_rdata,
      w6_69_rdata,
      w6_70_rdata,
      w6_71_rdata,
      w6_72_rdata,
      w6_73_rdata,
      w6_74_rdata,
      w6_75_rdata,
      w6_76_rdata,
      w6_77_rdata,
      w6_78_rdata,
      w6_79_rdata,
      w6_80_rdata,
      w6_81_rdata,
      w6_82_rdata,
      w6_83_rdata,
      w6_84_rdata,
//input
      clk,
      w6_raddr);

	  input		 clk;
	  input  [6:0] w6_raddr;
    output [7:0] w6_1_rdata;
    output [7:0] w6_2_rdata;
    output [7:0] w6_3_rdata;
    output [7:0] w6_4_rdata;
    output [7:0] w6_5_rdata;
    output [7:0] w6_6_rdata;
    output [7:0] w6_7_rdata;
    output [7:0] w6_8_rdata;
    output [7:0] w6_9_rdata;
    output [7:0] w6_10_rdata;
    output [7:0] w6_11_rdata;
    output [7:0] w6_12_rdata;
    output [7:0] w6_13_rdata;
    output [7:0] w6_14_rdata;
    output [7:0] w6_15_rdata;
    output [7:0] w6_16_rdata;
    output [7:0] w6_17_rdata;
    output [7:0] w6_18_rdata;
    output [7:0] w6_19_rdata;
    output [7:0] w6_20_rdata;
    output [7:0] w6_21_rdata;
    output [7:0] w6_22_rdata;
    output [7:0] w6_23_rdata;
    output [7:0] w6_24_rdata;
    output [7:0] w6_25_rdata;
    output [7:0] w6_26_rdata;
    output [7:0] w6_27_rdata;
    output [7:0] w6_28_rdata;
    output [7:0] w6_29_rdata;
    output [7:0] w6_30_rdata;
    output [7:0] w6_31_rdata;
    output [7:0] w6_32_rdata;
    output [7:0] w6_33_rdata;
    output [7:0] w6_34_rdata;
    output [7:0] w6_35_rdata;
    output [7:0] w6_36_rdata;
    output [7:0] w6_37_rdata;
    output [7:0] w6_38_rdata;
    output [7:0] w6_39_rdata;
    output [7:0] w6_40_rdata;
    output [7:0] w6_41_rdata;
    output [7:0] w6_42_rdata;
    output [7:0] w6_43_rdata;
    output [7:0] w6_44_rdata;
    output [7:0] w6_45_rdata;
    output [7:0] w6_46_rdata;
    output [7:0] w6_47_rdata;
    output [7:0] w6_48_rdata;
    output [7:0] w6_49_rdata;
    output [7:0] w6_50_rdata;
    output [7:0] w6_51_rdata;
    output [7:0] w6_52_rdata;
    output [7:0] w6_53_rdata;
    output [7:0] w6_54_rdata;
    output [7:0] w6_55_rdata;
    output [7:0] w6_56_rdata;
    output [7:0] w6_57_rdata;
    output [7:0] w6_58_rdata;
    output [7:0] w6_59_rdata;
    output [7:0] w6_60_rdata;
    output [7:0] w6_61_rdata;
    output [7:0] w6_62_rdata;
    output [7:0] w6_63_rdata;
    output [7:0] w6_64_rdata;
    output [7:0] w6_65_rdata;
    output [7:0] w6_66_rdata;
    output [7:0] w6_67_rdata;
    output [7:0] w6_68_rdata;
    output [7:0] w6_69_rdata;
    output [7:0] w6_70_rdata;
    output [7:0] w6_71_rdata;
    output [7:0] w6_72_rdata;
    output [7:0] w6_73_rdata;
    output [7:0] w6_74_rdata;
    output [7:0] w6_75_rdata;
    output [7:0] w6_76_rdata;
    output [7:0] w6_77_rdata;
    output [7:0] w6_78_rdata;
    output [7:0] w6_79_rdata;
    output [7:0] w6_80_rdata;
    output [7:0] w6_81_rdata;
    output [7:0] w6_82_rdata;
    output [7:0] w6_83_rdata;
    output [7:0] w6_84_rdata;

blk_mem_gen_w6_1_rom w6_1 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_1_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_2_rom w6_2 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_2_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_3_rom w6_3 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_3_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_4_rom w6_4 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_4_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_5_rom w6_5 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_5_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_6_rom w6_6 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_6_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_7_rom w6_7 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_7_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_8_rom w6_8 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_8_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_9_rom w6_9 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_9_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_10_rom w6_10 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_10_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_11_rom w6_11 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_11_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_12_rom w6_12 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_12_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_13_rom w6_13 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_13_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_14_rom w6_14 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_14_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_15_rom w6_15 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_15_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_16_rom w6_16 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_16_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_17_rom w6_17 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_17_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_18_rom w6_18 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_18_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_19_rom w6_19 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_19_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_20_rom w6_20 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_20_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_21_rom w6_21 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_21_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_22_rom w6_22 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_22_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_23_rom w6_23 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_23_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_24_rom w6_24 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_24_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_25_rom w6_25 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_25_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_26_rom w6_26 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_26_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_27_rom w6_27 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_27_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_28_rom w6_28 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_28_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_29_rom w6_29 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_29_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_30_rom w6_30 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_30_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_31_rom w6_31 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_31_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_32_rom w6_32 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_32_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_33_rom w6_33 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_33_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_34_rom w6_34 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_34_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_35_rom w6_35 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_35_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_36_rom w6_36 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_36_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_37_rom w6_37 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_37_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_38_rom w6_38 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_38_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_39_rom w6_39 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_39_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_40_rom w6_40 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_40_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_41_rom w6_41 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_41_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_42_rom w6_42 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_42_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_43_rom w6_43 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_43_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_44_rom w6_44 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_44_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_45_rom w6_45 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_45_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_46_rom w6_46 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_46_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_47_rom w6_47 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_47_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_48_rom w6_48 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_48_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_49_rom w6_49 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_49_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_50_rom w6_50 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_50_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_51_rom w6_51 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_51_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_52_rom w6_52 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_52_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_53_rom w6_53 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_53_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_54_rom w6_54 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_54_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_55_rom w6_55 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_55_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_56_rom w6_56 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_56_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_57_rom w6_57 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_57_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_58_rom w6_58 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_58_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_59_rom w6_59 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_59_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_60_rom w6_60 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_60_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_61_rom w6_61 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_61_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_62_rom w6_62 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_62_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_63_rom w6_63 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_63_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_64_rom w6_64 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_64_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_65_rom w6_65 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_65_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_66_rom w6_66 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_66_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_67_rom w6_67 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_67_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_68_rom w6_68 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_68_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_69_rom w6_69 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_69_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_70_rom w6_70 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_70_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_71_rom w6_71 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_71_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_72_rom w6_72 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_72_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_73_rom w6_73 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_73_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_74_rom w6_74 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_74_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_75_rom w6_75 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_75_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_76_rom w6_76 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_76_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_77_rom w6_77 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_77_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_78_rom w6_78 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_78_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_79_rom w6_79 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_79_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_80_rom w6_80 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_80_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_81_rom w6_81 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_81_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_82_rom w6_82 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_82_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_83_rom w6_83 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_83_rdata)  // output wire [7 : 0] douta
);
blk_mem_gen_w6_84_rom w6_84 (
  .clka(clk),    // input wire clka
  .addra(w6_raddr),  // input wire [6 : 0] addra
  .douta(w6_84_rdata)  // output wire [7 : 0] douta
);

endmodule