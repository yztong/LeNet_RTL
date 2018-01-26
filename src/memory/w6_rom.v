//==================================================================================================
//  Filename      : w6_rom.v
//  Created On    : 2018-01-08 12:12:47
//  Last Modified : 2018-01-26 16:07:02
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

  wire [671:0] w6_rdata;  
  blk_mem_gen_w6_rom w6_rom (
    .clka(clk),    // input wire clka
    .addra(w6_raddr),  // input wire [6 : 0] addra
    .douta(w6_rdata)  // output wire [671 : 0] douta
  );

  assign w6_1_rdata = w6_rdata[7:0];
  assign w6_2_rdata = w6_rdata[15:8];
  assign w6_3_rdata = w6_rdata[23:16];
  assign w6_4_rdata = w6_rdata[31:24];
  assign w6_5_rdata = w6_rdata[39:32];
  assign w6_6_rdata = w6_rdata[47:40];
  assign w6_7_rdata = w6_rdata[55:48];
  assign w6_8_rdata = w6_rdata[63:56];
  assign w6_9_rdata = w6_rdata[71:64];
  assign w6_10_rdata = w6_rdata[79:72];
  assign w6_11_rdata = w6_rdata[87:80];
  assign w6_12_rdata = w6_rdata[95:88];
  assign w6_13_rdata = w6_rdata[103:96];
  assign w6_14_rdata = w6_rdata[111:104];
  assign w6_15_rdata = w6_rdata[119:112];
  assign w6_16_rdata = w6_rdata[127:120];
  assign w6_17_rdata = w6_rdata[135:128];
  assign w6_18_rdata = w6_rdata[143:136];
  assign w6_19_rdata = w6_rdata[151:144];
  assign w6_20_rdata = w6_rdata[159:152];
  assign w6_21_rdata = w6_rdata[167:160];
  assign w6_22_rdata = w6_rdata[175:168];
  assign w6_23_rdata = w6_rdata[183:176];
  assign w6_24_rdata = w6_rdata[191:184];
  assign w6_25_rdata = w6_rdata[199:192];
  assign w6_26_rdata = w6_rdata[207:200];
  assign w6_27_rdata = w6_rdata[215:208];
  assign w6_28_rdata = w6_rdata[223:216];
  assign w6_29_rdata = w6_rdata[231:224];
  assign w6_30_rdata = w6_rdata[239:232];
  assign w6_31_rdata = w6_rdata[247:240];
  assign w6_32_rdata = w6_rdata[255:248];
  assign w6_33_rdata = w6_rdata[263:256];
  assign w6_34_rdata = w6_rdata[271:264];
  assign w6_35_rdata = w6_rdata[279:272];
  assign w6_36_rdata = w6_rdata[287:280];
  assign w6_37_rdata = w6_rdata[295:288];
  assign w6_38_rdata = w6_rdata[303:296];
  assign w6_39_rdata = w6_rdata[311:304];
  assign w6_40_rdata = w6_rdata[319:312];
  assign w6_41_rdata = w6_rdata[327:320];
  assign w6_42_rdata = w6_rdata[335:328];
  assign w6_43_rdata = w6_rdata[343:336];
  assign w6_44_rdata = w6_rdata[351:344];
  assign w6_45_rdata = w6_rdata[359:352];
  assign w6_46_rdata = w6_rdata[367:360];
  assign w6_47_rdata = w6_rdata[375:368];
  assign w6_48_rdata = w6_rdata[383:376];
  assign w6_49_rdata = w6_rdata[391:384];
  assign w6_50_rdata = w6_rdata[399:392];
  assign w6_51_rdata = w6_rdata[407:400];
  assign w6_52_rdata = w6_rdata[415:408];
  assign w6_53_rdata = w6_rdata[423:416];
  assign w6_54_rdata = w6_rdata[431:424];
  assign w6_55_rdata = w6_rdata[439:432];
  assign w6_56_rdata = w6_rdata[447:440];
  assign w6_57_rdata = w6_rdata[455:448];
  assign w6_58_rdata = w6_rdata[463:456];
  assign w6_59_rdata = w6_rdata[471:464];
  assign w6_60_rdata = w6_rdata[479:472];
  assign w6_61_rdata = w6_rdata[487:480];
  assign w6_62_rdata = w6_rdata[495:488];
  assign w6_63_rdata = w6_rdata[503:496];
  assign w6_64_rdata = w6_rdata[511:504];
  assign w6_65_rdata = w6_rdata[519:512];
  assign w6_66_rdata = w6_rdata[527:520];
  assign w6_67_rdata = w6_rdata[535:528];
  assign w6_68_rdata = w6_rdata[543:536];
  assign w6_69_rdata = w6_rdata[551:544];
  assign w6_70_rdata = w6_rdata[559:552];
  assign w6_71_rdata = w6_rdata[567:560];
  assign w6_72_rdata = w6_rdata[575:568];
  assign w6_73_rdata = w6_rdata[583:576];
  assign w6_74_rdata = w6_rdata[591:584];
  assign w6_75_rdata = w6_rdata[599:592];
  assign w6_76_rdata = w6_rdata[607:600];
  assign w6_77_rdata = w6_rdata[615:608];
  assign w6_78_rdata = w6_rdata[623:616];
  assign w6_79_rdata = w6_rdata[631:624];
  assign w6_80_rdata = w6_rdata[639:632];
  assign w6_81_rdata = w6_rdata[647:640];
  assign w6_82_rdata = w6_rdata[655:648];
  assign w6_83_rdata = w6_rdata[663:656];
  assign w6_84_rdata = w6_rdata[671:664];


endmodule