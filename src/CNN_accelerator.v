//==================================================================================================
//  Filename      : CNN_accelerator.v
//  Created On    : 2018-01-25 13:32:28
//  Last Modified : 2018-01-25 18:15:38
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
`timescale 1ns/1ns
module CNN_accelerator(/*autoport*/
//output
			done,
			class_value,
			class_index,
//input
			sys_clk,
			rst_n,
			bd_clk,
			start,
			ena,
			f1_wr_en,
			f1_waddr,
			f1_wdata);
input sys_clk;
input rst_n;
input bd_clk;
input start;
input ena;
input [3:0] f1_wr_en;
input [31:0]f1_waddr;
input [31:0]f1_wdata;
output done;
output [15:0] class_value;
output [3:0]  class_index;





/*autodef*/
wire get_class_start;
wire get_class_done;
wire [3:0]f1_wr_en;
wire [31:0]f1_waddr;
wire wclk;
wire [3:0]class_index;
wire [15:0]class_value;
wire [31:0]f1_wdata;
wire ena;
wire [15:0]f2_2_wdata;
wire [7:0]w5_100_rdata;
wire [22:0]mac3_10;
wire [7:0]w3_3_2_rdata;
wire [15:0]f4_5_rdata;
wire [15:0]f7_rdata;
wire [15:0]f5_7_wdata;
wire [7:0]w5_90_rdata;
wire [7:0]w3_10_5_rdata;
wire [7:0]w3_16_3_rdata;
wire [7:0]w5_75_rdata;
wire [7:0]w6_47_rdata;
wire [8:0]w5_raddr;
wire [7:0]w6_67_rdata;
wire [7:0]w5_27_rdata;
wire [22:0]mac3_47;
wire [22:0]mac3_46;
wire [22:0]mac3_45;
wire [22:0]mac3_44;
wire [22:0]mac3_43;
wire [22:0]mac3_42;
wire [22:0]mac3_41;
wire [22:0]mac3_40;
wire [7:0]w3_11_5_rdata;
wire [22:0]mac3_49;
wire [22:0]mac3_48;
wire [15:0]f4_11_wdata;
wire [15:0]f3_6_wdata;
wire [7:0]w5_37_rdata;
wire [7:0]w5_17_rdata;
wire [22:0]mac4_35;
wire [7:0]w5_98_rdata;
wire [7:0]w6_81_rdata;
wire [7:0]w6_80_rdata;
wire [15:0]f4_16_wdata;
wire [7:0]w1_5_rdata;
wire conv2_start;
wire [7:0]w5_38_rdata;
wire [7:0]w6_70_rdata;
wire [7:0]w5_52_rdata;
wire [7:0]w3_1_2_rdata;
wire sel;
wire [15:0]f2_5_rdata;
wire fc3_done;
wire [7:0]w6_59_rdata;
wire [22:0]mac3_112;
wire [22:0]mac3_113;
wire [22:0]mac3_110;
wire [22:0]mac3_111;
wire [22:0]mac3_116;
wire [22:0]mac3_117;
wire [22:0]mac3_114;
wire [22:0]mac3_115;
wire [22:0]mac3_118;
wire [7:0]w3_9_2_rdata;
wire [7:0]w5_26_rdata;
wire [7:0]w5_2_rdata;
wire [7:0]w5_84_rdata;
wire [7:0]w6_21_rdata;
wire [7:0]w3_12_1_rdata;
wire [22:0]mac4_68;
wire [22:0]mac4_69;
wire [15:0]f3_2_wdata;
wire [22:0]mac4_60;
wire [22:0]mac4_61;
wire [22:0]mac4_62;
wire [22:0]mac4_63;
wire [22:0]mac4_64;
wire [22:0]mac4_65;
wire [15:0]f4_8_rdata;
wire [22:0]mac4_67;
wire [7:0]w3_10_2_rdata;
wire [7:0]w5_51_rdata;
wire [15:0]f5_10_wdata;
wire [15:0]f5_2_wdata;
wire [7:0]f3_raddr;
wire [7:0]w3_5_6_rdata;
wire [7:0]w7_9_rdata;
wire [6:0]f6_raddr;
wire [7:0]w3_3_3_rdata;
wire [7:0]w5_78_rdata;
wire [7:0]w6_40_rdata;
wire [7:0]w3_13_3_rdata;
wire [7:0]w5_77_rdata;
wire [7:0]w3_8_5_rdata;
wire [7:0]w6_83_rdata;
wire [7:0]w3_5_2_rdata;
wire [7:0]w3_12_4_rdata;
wire [7:0]w5_69_rdata;
wire [22:0]mac2_14_6;
wire clk;
wire [7:0]w6_31_rdata;
wire [7:0]w5_117_rdata;
wire [7:0]w3_16_5_rdata;
wire [7:0]w3_15_6_rdata;
wire pool1_done;
wire [7:0]w6_62_rdata;
wire conv1_start;
wire [7:0]w5_39_rdata;
wire [7:0]w3_4_5_rdata;
wire [6:0]f7_raddr;
wire [7:0]w5_19_rdata;
wire [7:0]w6_53_rdata;
wire [7:0]w5_15_rdata;
wire [22:0]mac5_10;
wire [15:0]f4_2_wdata;
wire [4:0]w3_raddr;
wire [7:0]w5_86_rdata;
wire [15:0]f5_6_wdata;
wire [15:0]f3_6_rdata;
wire [7:0]w5_45_rdata;
wire [15:0]f4_12_wdata;
wire [22:0]mac5_8;
wire [7:0]w5_9_rdata;
wire [7:0]w5_58_rdata;
wire [7:0]w3_5_1_rdata;
wire [15:0]f4_1_wdata;
wire [7:0]w6_68_rdata;
wire [7:0]w3_11_2_rdata;
wire [7:0]w6_18_rdata;
wire [7:0]w5_114_rdata;
wire [22:0]mac4_51;
wire [7:0]w6_7_rdata;
wire [22:0]mac4_53;
wire [22:0]mac4_52;
wire [22:0]mac4_55;
wire [22:0]mac4_54;
wire [22:0]mac4_57;
wire [22:0]mac4_56;
wire [22:0]mac4_59;
wire [22:0]mac4_58;
wire fc2_start;
wire [7:0]w3_5_4_rdata;
wire [7:0]w3_1_5_rdata;
wire [7:0]w5_11_rdata;
wire [7:0]w3_4_3_rdata;
wire [7:0]w6_17_rdata;
wire [15:0]f2_1_wdata;
wire [7:0]w6_74_rdata;
wire [6:0]w7_raddr;
wire [7:0]w6_2_rdata;
wire [7:0]w5_113_rdata;
wire [15:0]f4_7_wdata;
wire pool1_start;
wire [7:0]w3_10_1_rdata;
wire [7:0]w3_7_2_rdata;
wire [7:0]w3_2_2_rdata;
wire [7:0]w6_39_rdata;
wire [7:0]w6_26_rdata;
wire [7:0]w6_71_rdata;
wire [15:0]class8;
wire [9:0]f2_raddr;
wire [15:0]f2_4_rdata;
wire [15:0]f3_5_wdata;
wire [7:0]w7_1_rdata;
wire [7:0]w5_63_rdata;
wire [7:0]w6_50_rdata;
wire [7:0]w3_12_2_rdata;
wire [7:0]w5_72_rdata;
wire [22:0]mac4_24;
wire [22:0]mac4_25;
wire [22:0]mac4_26;
wire [15:0]f2_6_rdata;
wire pool2_done;
wire [22:0]mac4_21;
wire [22:0]mac4_22;
wire [22:0]mac4_23;
wire [7:0]w5_97_rdata;
wire [7:0]w5_34_rdata;
wire [22:0]mac3_58;
wire [7:0]w5_92_rdata;
wire [22:0]mac3_50;
wire [22:0]mac3_51;
wire [22:0]mac3_52;
wire [22:0]mac3_53;
wire [22:0]mac3_54;
wire [22:0]mac3_55;
wire [22:0]mac3_56;
wire [22:0]mac3_57;
wire [7:0]w3_13_4_rdata;
wire [7:0]w5_25_rdata;
wire fc2_done;
wire [7:0]w6_64_rdata;
wire [7:0]w6_57_rdata;
wire [22:0]mac2_2_6;
wire [22:0]mac2_2_4;
wire [22:0]mac2_2_5;
wire [22:0]mac2_2_2;
wire [22:0]mac2_2_3;
wire [22:0]mac2_2_1;
wire [7:0]w1_4_rdata;
wire [15:0]f4_14_wdata;
wire [7:0]w6_20_rdata;
wire f5_wr_en;
wire [7:0]w3_15_3_rdata;
wire fc3_start;
wire [7:0]w5_85_rdata;
wire [7:0]w3_15_2_rdata;
wire [7:0]w5_13_rdata;
wire [7:0]w7_5_rdata;
wire [22:0]mac1_1;
wire [22:0]mac1_2;
wire [22:0]mac1_3;
wire [22:0]mac1_4;
wire [22:0]mac1_5;
wire [22:0]mac1_6;
wire [22:0]mac3_6;
wire [22:0]mac3_7;
wire [22:0]mac3_4;
wire [7:0]w5_105_rdata;
wire [22:0]mac3_2;
wire [22:0]mac3_3;
wire [7:0]f3_waddr;
wire [7:0]w5_1_rdata;
wire [22:0]mac3_8;
wire [22:0]mac3_9;
wire [22:0]mac3_101;
wire [22:0]mac3_100;
wire [22:0]mac3_103;
wire [22:0]mac3_102;
wire [22:0]mac3_105;
wire [22:0]mac3_104;
wire [22:0]mac3_107;
wire [22:0]mac3_106;
wire [22:0]mac3_109;
wire [22:0]mac3_108;
wire [22:0]mac5_6;
wire [22:0]mac5_7;
wire [22:0]mac5_1;
wire [22:0]mac5_2;
wire [22:0]mac5_3;
wire [7:0]w3_9_3_rdata;
wire [15:0]f4_3_wdata;
wire [7:0]w6_54_rdata;
wire [22:0]mac4_29;
wire [7:0]w3_3_1_rdata;
wire [22:0]mac4_19;
wire f4_wr_en;
wire [7:0]w3_7_5_rdata;
wire [7:0]w5_21_rdata;
wire [22:0]mac4_15;
wire [22:0]mac4_14;
wire [22:0]mac4_17;
wire [22:0]mac4_16;
wire [22:0]mac4_11;
wire [22:0]mac4_10;
wire [7:0]w6_4_rdata;
wire [22:0]mac4_12;
wire [7:0]w6_69_rdata;
wire [7:0]w3_1_1_rdata;
wire [7:0]w3_10_3_rdata;
wire [7:0]w5_106_rdata;
wire [7:0]w6_76_rdata;
wire fc2_clr;
wire [7:0]w3_4_2_rdata;
wire pool2_start;
wire [4:0]f5_raddr;
wire [7:0]w3_9_1_rdata;
wire [7:0]f1_rdata;
wire [15:0]f4_4_wdata;
wire [7:0]w6_8_rdata;
wire [22:0]mac2_7_3;
wire [22:0]mac3_23;
wire [15:0]f3_1_wdata;
wire [22:0]mac4_48;
wire [22:0]mac2_13_3;
wire [15:0]f4_6_rdata;
wire [7:0]w6_84_rdata;
wire [15:0]f4_7_rdata;
wire [7:0]w3_4_6_rdata;
wire [7:0]w6_19_rdata;
wire [7:0]w5_115_rdata;
wire [15:0]f2_3_rdata;
wire [15:0]f5_9_wdata;
wire [7:0]w5_61_rdata;
wire [7:0]w3_15_4_rdata;
wire [15:0]f4_2_rdata;
wire [15:0]f4_16_rdata;
wire [7:0]w5_62_rdata;
wire [7:0]w6_79_rdata;
wire [7:0]w5_81_rdata;
wire [7:0]w3_2_1_rdata;
wire [7:0]w3_8_4_rdata;
wire [7:0]w3_10_4_rdata;
wire [15:0]f4_13_wdata;
wire [15:0]f2_4_wdata;
wire [15:0]f4_9_wdata;
wire [22:0]mac3_14;
wire [22:0]mac3_15;
wire [22:0]mac3_16;
wire [22:0]mac3_17;
wire [7:0]w3_7_3_rdata;
wire [22:0]mac3_11;
wire [22:0]mac3_12;
wire [22:0]mac3_13;
wire [15:0]f2_3_wdata;
wire [15:0]f4_10_wdata;
wire [22:0]mac3_19;
wire [22:0]mac4_42;
wire [22:0]mac4_43;
wire [22:0]mac4_40;
wire [22:0]mac4_41;
wire [22:0]mac4_46;
wire [22:0]mac4_47;
wire [22:0]mac4_44;
wire [22:0]mac4_45;
wire [7:0]w5_8_rdata;
wire [15:0]f3_3_wdata;
wire [22:0]mac4_49;
wire [7:0]w5_44_rdata;
wire [7:0]w6_45_rdata;
wire [3:0]f5_sel;
wire [7:0]w6_3_rdata;
wire [7:0]w5_111_rdata;
wire f8_wr_en;
wire [22:0]mac3_89;
wire [22:0]mac3_88;
wire [7:0]w3_16_2_rdata;
wire [22:0]mac3_83;
wire [22:0]mac3_82;
wire [22:0]mac3_81;
wire [22:0]mac3_80;
wire [22:0]mac3_18;
wire [22:0]mac3_86;
wire [22:0]mac3_85;
wire [7:0]w6_60_rdata;
wire [7:0]w7_8_rdata;
wire [7:0]w3_14_1_rdata;
wire [15:0]f4_1_rdata;
wire [7:0]w5_82_rdata;
wire [7:0]w5_80_rdata;
wire [7:0]w5_101_rdata;
wire [15:0]f4_4_rdata;
wire [22:0]mac4_2;
wire [7:0]w5_70_rdata;
wire [7:0]w5_24_rdata;
wire [4:0]f5_waddr;
wire [7:0]w6_46_rdata;
wire [15:0]f4_14_rdata;
wire [22:0]mac4_27;
wire [15:0]f6_rdata;
wire [15:0]f3_4_wdata;
wire [7:0]w5_12_rdata;
wire [7:0]w3_6_1_rdata;
wire [22:0]mac4_20;
wire [22:0]mac2_6_2;
wire [22:0]mac2_6_3;
wire [22:0]mac2_6_1;
wire [22:0]mac2_6_6;
wire [15:0]f3_2_rdata;
wire [22:0]mac2_6_5;
wire [7:0]w3_10_6_rdata;
wire [15:0]f4_11_rdata;
wire [22:0]mac2_4_5;
wire [22:0]mac2_4_6;
wire [7:0]w5_36_rdata;
wire [7:0]w6_23_rdata;
wire [22:0]mac2_4_1;
wire [22:0]mac2_4_2;
wire [22:0]mac2_4_3;
wire [7:0]w5_104_rdata;
wire [7:0]w6_58_rdata;
wire fc1_start;
wire [22:0]mac4_28;
wire [22:0]mac2_8_1;
wire [22:0]mac2_8_2;
wire [7:0]w3_2_5_rdata;
wire [22:0]mac2_8_4;
wire [22:0]mac2_8_5;
wire [15:0]f2_6_wdata;
wire [22:0]mac4_79;
wire [7:0]w3_7_4_rdata;
wire conv1_done;
wire [22:0]mac3_119;
wire [7:0]w5_103_rdata;
wire [22:0]mac3_59;
wire [22:0]mac3_87;
wire [7:0]w7_7_rdata;
wire [22:0]mac3_5;
wire [22:0]mac3_66;
wire [15:0]f2_2_rdata;
wire [7:0]w6_22_rdata;
wire [7:0]w6_13_rdata;
wire [22:0]mac2_1_2;
wire [7:0]w3_13_5_rdata;
wire [7:0]w3_8_1_rdata;
wire [7:0]w5_65_rdata;
wire [7:0]w3_1_3_rdata;
wire [15:0]class2;
wire [22:0]mac2_3_5;
wire [7:0]w6_1_rdata;
wire [15:0]class7;
wire [15:0]class6;
wire [15:0]class5;
wire [7:0]w5_32_rdata;
wire [22:0]mac2_5_5;
wire [22:0]mac2_5_4;
wire [15:0]class9;
wire [22:0]mac2_5_6;
wire [22:0]mac2_5_1;
wire [22:0]mac2_5_3;
wire [22:0]mac2_5_2;
wire [7:0]w6_16_rdata;
wire [15:0]f5_13_wdata;
wire [7:0]w3_5_3_rdata;
wire [22:0]mac2_3_6;
wire [7:0]w3_7_1_rdata;
wire [22:0]mac2_3_4;
wire [22:0]mac2_3_3;
wire [22:0]mac2_3_2;
wire [22:0]mac2_3_1;
wire [7:0]w6_63_rdata;
wire [7:0]w5_23_rdata;
wire [7:0]w6_72_rdata;
wire [7:0]w6_51_rdata;
wire [22:0]mac2_9_1;
wire [7:0]w6_75_rdata;
wire [22:0]mac2_9_3;
wire [22:0]mac2_9_2;
wire [22:0]mac2_9_5;
wire [22:0]mac2_9_4;
wire [7:0]w5_20_rdata;
wire [22:0]mac2_9_6;
wire [7:0]w5_59_rdata;
wire [7:0]w7_2_rdata;
wire [7:0]w6_41_rdata;
wire [22:0]mac2_7_2;
wire [22:0]mac2_7_1;
wire [22:0]mac2_7_6;
wire [22:0]mac2_7_5;
wire [22:0]mac2_7_4;
wire [15:0]f5_8_wdata;
wire [7:0]w6_66_rdata;
wire [7:0]w3_13_2_rdata;
wire [6:0]w6_raddr;
wire [15:0]f5_4_wdata;
wire [22:0]mac4_5;
wire [22:0]mac4_4;
wire [22:0]mac4_7;
wire [22:0]mac4_6;
wire [22:0]mac4_1;
wire [22:0]mac4_3;
wire [7:0]w6_5_rdata;
wire [22:0]mac4_9;
wire [22:0]mac4_8;
wire [22:0]mac3_84;
wire f6_wr_en;
wire [7:0]w3_2_3_rdata;
wire [7:0]w5_47_rdata;
wire [7:0]w3_13_1_rdata;
wire [7:0]w3_6_4_rdata;
wire [22:0]mac2_1_1;
wire [22:0]mac2_1_3;
wire [7:0]w5_94_rdata;
wire [22:0]mac2_1_5;
wire [22:0]mac2_1_4;
wire [22:0]mac2_1_6;
wire [22:0]mac3_61;
wire [22:0]mac3_60;
wire [22:0]mac3_63;
wire [22:0]mac3_62;
wire [22:0]mac3_65;
wire [22:0]mac3_64;
wire [22:0]mac3_67;
wire [7:0]w5_54_rdata;
wire [22:0]mac3_69;
wire [22:0]mac3_68;
wire [7:0]w5_71_rdata;
wire [22:0]mac2_11_2;
wire [22:0]mac4_66;
wire [22:0]mac3_1;
wire [7:0]w3_16_4_rdata;
wire [7:0]w6_44_rdata;
wire [7:0]w5_49_rdata;
wire [15:0]f2_5_wdata;
wire [4:0]w1_raddr;
wire [22:0]mac2_6_4;
wire [15:0]f4_15_rdata;
wire [7:0]w6_65_rdata;
wire [7:0]w5_73_rdata;
wire [7:0]w5_83_rdata;
wire [7:0]w6_27_rdata;
wire [15:0]f5_rdata;
wire [22:0]mac4_77;
wire [22:0]mac4_76;
wire [22:0]mac4_75;
wire [22:0]mac4_74;
wire [22:0]mac4_73;
wire [22:0]mac4_72;
wire [7:0]w3_8_6_rdata;
wire [22:0]mac4_70;
wire pool2_clr;
wire [7:0]w6_37_rdata;
wire [7:0]w6_43_rdata;
wire [22:0]mac4_78;
wire [7:0]w5_22_rdata;
wire [15:0]f3_1_rdata;
wire [15:0]class1;
wire [7:0]w7_10_rdata;
wire [15:0]f4_12_rdata;
wire [7:0]w3_8_2_rdata;
wire [7:0]w6_78_rdata;
wire [22:0]mac3_98;
wire [22:0]mac3_99;
wire [15:0]f4_13_rdata;
wire [22:0]mac3_94;
wire [22:0]mac3_95;
wire [22:0]mac3_96;
wire [22:0]mac3_97;
wire [22:0]mac3_90;
wire [22:0]mac3_91;
wire [22:0]mac3_92;
wire [7:0]w7_4_rdata;
wire [7:0]w5_60_rdata;
wire [7:0]w5_29_rdata;
wire fc3_clr;
wire [22:0]mac5_9;
wire [22:0]mac4_36;
wire [22:0]mac2_15_1;
wire [22:0]mac2_15_3;
wire [22:0]mac2_15_2;
wire [22:0]mac2_15_5;
wire [22:0]mac2_15_4;
wire [22:0]mac2_15_6;
wire [7:0]w3_15_1_rdata;
wire [22:0]mac2_10_6;
wire [7:0]w5_7_rdata;
wire [22:0]mac3_31;
wire [22:0]mac2_11_5;
wire [22:0]mac2_11_4;
wire [22:0]mac2_11_6;
wire [22:0]mac2_11_1;
wire [22:0]mac2_11_3;
wire [7:0]w5_87_rdata;
wire [7:0]w6_12_rdata;
wire [7:0]w3_11_6_rdata;
wire [15:0]f4_9_rdata;
wire [7:0]w5_66_rdata;
wire f2_wr_en;
wire [7:0]w5_79_rdata;
wire [7:0]w5_93_rdata;
wire [7:0]w3_2_4_rdata;
wire [7:0]w3_4_1_rdata;
wire [7:0]w6_11_rdata;
wire [7:0]w6_25_rdata;
wire [7:0]w5_119_rdata;
wire [7:0]w7_6_rdata;
wire [22:0]mac5_4;
wire [7:0]w3_6_2_rdata;
wire pool1_clr;
wire [7:0]w5_3_rdata;
wire [22:0]mac2_12_2;
wire [7:0]w6_35_rdata;
wire [7:0]w3_11_1_rdata;
wire [22:0]mac5_5;
wire [22:0]mac2_12_3;
wire [9:0]f1_raddr;
wire [7:0]w5_43_rdata;
wire [22:0]mac3_29;
wire [22:0]mac3_28;
wire [22:0]mac3_25;
wire [22:0]mac3_24;
wire [22:0]mac3_27;
wire [22:0]mac3_26;
wire [22:0]mac3_21;
wire [22:0]mac3_20;
wire [22:0]mac2_10_2;
wire [22:0]mac3_22;
wire [7:0]w6_30_rdata;
wire [22:0]mac2_13_2;
wire [22:0]mac2_13_1;
wire [22:0]mac2_13_6;
wire [22:0]mac2_13_5;
wire [22:0]mac2_13_4;
wire [7:0]w5_96_rdata;
wire f7_wr_en;
wire [7:0]w3_9_4_rdata;
wire [7:0]w6_9_rdata;
wire [15:0]f5_3_wdata;
wire [15:0]f3_5_rdata;
wire [7:0]w5_50_rdata;
wire [15:0]class3;
wire [7:0]w5_76_rdata;
wire f3_wr_en;
wire [7:0]w3_5_5_rdata;
wire [7:0]w3_12_6_rdata;
wire [15:0]f4_5_wdata;
wire [7:0]w1_1_rdata;
wire [7:0]w5_91_rdata;
wire [7:0]w5_109_rdata;
wire [7:0]w5_57_rdata;
wire [7:0]w5_102_rdata;
wire [7:0]w5_30_rdata;
wire [7:0]w3_12_3_rdata;
wire [22:0]mac4_71;
wire [7:0]w1_2_rdata;
wire [7:0]w3_1_6_rdata;
wire [22:0]mac4_33;
wire [22:0]mac4_32;
wire [22:0]mac4_31;
wire [22:0]mac4_30;
wire [22:0]mac4_37;
wire [7:0]w5_89_rdata;
wire [15:0]f5_5_wdata;
wire [22:0]mac4_34;
wire [7:0]w6_38_rdata;
wire [7:0]w5_41_rdata;
wire [22:0]mac4_39;
wire [22:0]mac4_38;
wire [15:0]f5_14_wdata;
wire [7:0]w5_64_rdata;
wire [7:0]w6_6_rdata;
wire [15:0]f4_15_wdata;
wire [22:0]mac2_12_1;
wire [22:0]mac2_12_6;
wire [22:0]mac2_12_4;
wire [22:0]mac2_12_5;
wire [15:0]f4_3_rdata;
wire [15:0]class0;
wire [7:0]w5_6_rdata;
wire [22:0]mac2_10_4;
wire [22:0]mac2_10_5;
wire [7:0]w3_1_4_rdata;
wire [15:0]f2_1_rdata;
wire [22:0]mac2_10_1;
wire [7:0]w5_108_rdata;
wire [22:0]mac2_10_3;
wire [22:0]mac4_84;
wire [22:0]mac4_82;
wire [22:0]mac4_83;
wire [22:0]mac4_80;
wire [22:0]mac4_81;
wire [15:0]f5_15_wdata;
wire [7:0]w5_35_rdata;
wire conv2_clr;
wire [7:0]w3_16_1_rdata;
wire [7:0]w5_4_rdata;
wire [7:0]w3_15_5_rdata;
wire [7:0]w3_11_3_rdata;
wire [22:0]mac3_73;
wire [22:0]mac3_70;
wire [22:0]mac3_71;
wire [22:0]mac3_76;
wire [22:0]mac3_77;
wire [22:0]mac3_74;
wire [22:0]mac3_75;
wire [7:0]w3_7_6_rdata;
wire [22:0]mac3_78;
wire [22:0]mac3_79;
wire [22:0]mac4_13;
wire [7:0]w3_3_5_rdata;
wire [7:0]w5_116_rdata;
wire [7:0]w3_9_6_rdata;
wire [7:0]w5_5_rdata;
wire [7:0]w5_56_rdata;
wire [7:0]w1_3_rdata;
wire [7:0]w3_6_3_rdata;
wire fc1_done;
wire [15:0]f3_3_rdata;
wire [7:0]w5_46_rdata;
wire [7:0]w5_67_rdata;
wire [7:0]w5_112_rdata;
wire [15:0]f4_6_wdata;
wire [22:0]mac4_50;
wire [7:0]w6_28_rdata;
wire [15:0]class4;
wire [7:0]w3_14_3_rdata;
wire [7:0]w6_29_rdata;
wire [7:0]w3_14_2_rdata;
wire [7:0]w3_9_5_rdata;
wire [7:0]w3_14_6_rdata;
wire [22:0]mac2_4_4;
wire [7:0]w3_6_6_rdata;
wire [7:0]w6_34_rdata;
wire [7:0]w5_40_rdata;
wire [7:0]w5_53_rdata;
wire [7:0]w3_13_6_rdata;
wire [22:0]mac3_72;
wire [7:0]w3_12_5_rdata;
wire [9:0]f2_waddr;
wire [7:0]w6_49_rdata;
wire [7:0]w6_36_rdata;
wire [7:0]w3_11_4_rdata;
wire [7:0]w5_18_rdata;
wire [15:0]f4_10_rdata;
wire [6:0]f4_raddr;
wire [22:0]mac3_93;
wire [7:0]w6_33_rdata;
wire [15:0]f5_16_wdata;
wire [22:0]mac4_18;
wire [7:0]w6_32_rdata;
wire [7:0]w6_42_rdata;
wire [7:0]w3_4_4_rdata;
wire [15:0]f5_12_wdata;
wire [7:0]w5_33_rdata;
wire [22:0]mac2_8_3;
wire fc1_clr;
wire [7:0]w3_16_6_rdata;
wire [7:0]w5_14_rdata;
wire [7:0]w5_107_rdata;
wire [15:0]f5_1_wdata;
wire [6:0]f4_waddr;
wire [7:0]w5_28_rdata;
wire [7:0]w5_110_rdata;
wire [7:0]w3_8_3_rdata;
wire [7:0]w3_2_6_rdata;
wire [7:0]w5_48_rdata;
wire [7:0]w6_48_rdata;
wire [7:0]w6_73_rdata;
wire [7:0]w5_95_rdata;
wire [7:0]w5_99_rdata;
wire [7:0]w5_88_rdata;
wire [15:0]f4_8_wdata;
wire [7:0]w6_61_rdata;
wire [7:0]w5_74_rdata;
wire [15:0]f3_4_rdata;
wire [7:0]w6_82_rdata;
wire [22:0]mac3_38;
wire [22:0]mac3_39;
wire [22:0]mac3_36;
wire [22:0]mac3_37;
wire [22:0]mac3_34;
wire [22:0]mac3_35;
wire [22:0]mac3_32;
wire [22:0]mac3_33;
wire [22:0]mac3_30;
wire [7:0]w5_10_rdata;
wire [7:0]w6_10_rdata;
wire [7:0]w6_56_rdata;
wire [7:0]w3_14_4_rdata;
wire [7:0]w5_31_rdata;
wire [7:0]w5_68_rdata;
wire [22:0]mac3_120;
wire [7:0]w6_15_rdata;
wire [7:0]w5_118_rdata;
wire [7:0]w6_14_rdata;
wire [7:0]w6_24_rdata;
wire [7:0]w5_55_rdata;
wire [7:0]w6_77_rdata;
wire [7:0]w6_55_rdata;
wire [7:0]w6_52_rdata;
wire [7:0]w1_6_rdata;
wire [22:0]mac2_14_1;
wire [22:0]mac2_14_2;
wire [22:0]mac2_14_3;
wire [22:0]mac2_14_4;
wire [22:0]mac2_14_5;
wire [7:0]w5_42_rdata;
wire [22:0]mac2_8_6;
wire [7:0]w3_3_4_rdata;
wire conv1_clr;
wire [7:0]w5_120_rdata;
wire [7:0]w3_14_5_rdata;
wire conv2_done;
wire [7:0]w5_16_rdata;
wire [7:0]w3_6_5_rdata;
wire [22:0]mac2_16_6;
wire [22:0]mac2_16_4;
wire [22:0]mac2_16_5;
wire [22:0]mac2_16_2;
wire [22:0]mac2_16_3;
wire [22:0]mac2_16_1;
wire [15:0]f5_11_wdata;
wire [7:0]w3_3_6_rdata;
wire [7:0]w7_3_rdata;




f1_ram f1_ram(/*autoinst*/
			.f1_rdata(f1_rdata[7:0]),
			.rclk(clk),
			.wclk(wclk),
			.f1_wr_en(f1_wr_en[3:0]),
			.f1_waddr(f1_waddr[31:0]),
			.f1_wdata(f1_wdata[31:0]),
			.ena(ena),
			.f1_raddr(f1_raddr[9:0]));
f2_ram f2_ram(/*autoinst*/
			.f2_1_rdata(f2_1_rdata[15:0]),
			.f2_2_rdata(f2_2_rdata[15:0]),
			.f2_3_rdata(f2_3_rdata[15:0]),
			.f2_4_rdata(f2_4_rdata[15:0]),
			.f2_5_rdata(f2_5_rdata[15:0]),
			.f2_6_rdata(f2_6_rdata[15:0]),
			.clk(clk),
			.f2_1_wdata(f2_1_wdata[15:0]),
			.f2_2_wdata(f2_2_wdata[15:0]),
			.f2_3_wdata(f2_3_wdata[15:0]),
			.f2_4_wdata(f2_4_wdata[15:0]),
			.f2_5_wdata(f2_5_wdata[15:0]),
			.f2_6_wdata(f2_6_wdata[15:0]),
			.f2_wr_en(f2_wr_en),
			.f2_waddr(f2_waddr[9:0]),
			.f2_raddr(f2_raddr[9:0]));
f3_ram f3_ram(/*autoinst*/
			.f3_1_rdata(f3_1_rdata[15:0]),
			.f3_2_rdata(f3_2_rdata[15:0]),
			.f3_3_rdata(f3_3_rdata[15:0]),
			.f3_4_rdata(f3_4_rdata[15:0]),
			.f3_5_rdata(f3_5_rdata[15:0]),
			.f3_6_rdata(f3_6_rdata[15:0]),
			.clk(clk),
			.f3_1_wdata(f3_1_wdata[15:0]),
			.f3_2_wdata(f3_2_wdata[15:0]),
			.f3_3_wdata(f3_3_wdata[15:0]),
			.f3_4_wdata(f3_4_wdata[15:0]),
			.f3_5_wdata(f3_5_wdata[15:0]),
			.f3_6_wdata(f3_6_wdata[15:0]),
			.f3_wr_en(f3_wr_en),
			.f3_waddr(f3_waddr[7:0]),
			.f3_raddr(f3_raddr[7:0]));
f4_ram f4_ram(/*autoinst*/
			.f4_1_rdata(f4_1_rdata[15:0]),
			.f4_2_rdata(f4_2_rdata[15:0]),
			.f4_3_rdata(f4_3_rdata[15:0]),
			.f4_4_rdata(f4_4_rdata[15:0]),
			.f4_5_rdata(f4_5_rdata[15:0]),
			.f4_6_rdata(f4_6_rdata[15:0]),
			.f4_7_rdata(f4_7_rdata[15:0]),
			.f4_8_rdata(f4_8_rdata[15:0]),
			.f4_9_rdata(f4_9_rdata[15:0]),
			.f4_10_rdata(f4_10_rdata[15:0]),
			.f4_11_rdata(f4_11_rdata[15:0]),
			.f4_12_rdata(f4_12_rdata[15:0]),
			.f4_13_rdata(f4_13_rdata[15:0]),
			.f4_14_rdata(f4_14_rdata[15:0]),
			.f4_15_rdata(f4_15_rdata[15:0]),
			.f4_16_rdata(f4_16_rdata[15:0]),
			.clk(clk),
			.f4_1_wdata(f4_1_wdata[15:0]),
			.f4_2_wdata(f4_2_wdata[15:0]),
			.f4_3_wdata(f4_3_wdata[15:0]),
			.f4_4_wdata(f4_4_wdata[15:0]),
			.f4_5_wdata(f4_5_wdata[15:0]),
			.f4_6_wdata(f4_6_wdata[15:0]),
			.f4_7_wdata(f4_7_wdata[15:0]),
			.f4_8_wdata(f4_8_wdata[15:0]),
			.f4_9_wdata(f4_9_wdata[15:0]),
			.f4_10_wdata(f4_10_wdata[15:0]),
			.f4_11_wdata(f4_11_wdata[15:0]),
			.f4_12_wdata(f4_12_wdata[15:0]),
			.f4_13_wdata(f4_13_wdata[15:0]),
			.f4_14_wdata(f4_14_wdata[15:0]),
			.f4_15_wdata(f4_15_wdata[15:0]),
			.f4_16_wdata(f4_16_wdata[15:0]),
			.f4_wr_en(f4_wr_en),
			.f4_waddr(f4_waddr[6:0]),
			.f4_raddr(f4_raddr[6:0]));
f5_ram f5_ram(/*autoinst*/
			.f5_rdata(f5_rdata[15:0]),
			.f5_1_wdata(f5_1_wdata[15:0]),
			.f5_2_wdata(f5_2_wdata[15:0]),
			.f5_3_wdata(f5_3_wdata[15:0]),
			.f5_4_wdata(f5_4_wdata[15:0]),
			.f5_5_wdata(f5_5_wdata[15:0]),
			.f5_6_wdata(f5_6_wdata[15:0]),
			.f5_7_wdata(f5_7_wdata[15:0]),
			.f5_8_wdata(f5_8_wdata[15:0]),
			.f5_9_wdata(f5_9_wdata[15:0]),
			.f5_10_wdata(f5_10_wdata[15:0]),
			.f5_11_wdata(f5_11_wdata[15:0]),
			.f5_12_wdata(f5_12_wdata[15:0]),
			.f5_13_wdata(f5_13_wdata[15:0]),
			.f5_14_wdata(f5_14_wdata[15:0]),
			.f5_15_wdata(f5_15_wdata[15:0]),
			.f5_16_wdata(f5_16_wdata[15:0]),
			.clk(clk),
			.f5_waddr(f5_waddr[4:0]),
			.f5_wr_en(f5_wr_en),
			.f5_sel(f5_sel[3:0]),
			.f5_raddr(f5_raddr[4:0]));
w1_rom w1_rom(/*autoinst*/
			.w1_1_rdata(w1_1_rdata[7:0]),
			.w1_2_rdata(w1_2_rdata[7:0]),
			.w1_3_rdata(w1_3_rdata[7:0]),
			.w1_4_rdata(w1_4_rdata[7:0]),
			.w1_5_rdata(w1_5_rdata[7:0]),
			.w1_6_rdata(w1_6_rdata[7:0]),
			.w1_raddr(w1_raddr[4:0]),
			.clk(clk));
w3_rom w3_rom(/*autoinst*/
			.w3_1_1_rdata(w3_1_1_rdata[7:0]),
			.w3_1_2_rdata(w3_1_2_rdata[7:0]),
			.w3_1_3_rdata(w3_1_3_rdata[7:0]),
			.w3_1_4_rdata(w3_1_4_rdata[7:0]),
			.w3_1_5_rdata(w3_1_5_rdata[7:0]),
			.w3_1_6_rdata(w3_1_6_rdata[7:0]),
			.w3_2_1_rdata(w3_2_1_rdata[7:0]),
			.w3_2_2_rdata(w3_2_2_rdata[7:0]),
			.w3_2_3_rdata(w3_2_3_rdata[7:0]),
			.w3_2_4_rdata(w3_2_4_rdata[7:0]),
			.w3_2_5_rdata(w3_2_5_rdata[7:0]),
			.w3_2_6_rdata(w3_2_6_rdata[7:0]),
			.w3_3_1_rdata(w3_3_1_rdata[7:0]),
			.w3_3_2_rdata(w3_3_2_rdata[7:0]),
			.w3_3_3_rdata(w3_3_3_rdata[7:0]),
			.w3_3_4_rdata(w3_3_4_rdata[7:0]),
			.w3_3_5_rdata(w3_3_5_rdata[7:0]),
			.w3_3_6_rdata(w3_3_6_rdata[7:0]),
			.w3_4_1_rdata(w3_4_1_rdata[7:0]),
			.w3_4_2_rdata(w3_4_2_rdata[7:0]),
			.w3_4_3_rdata(w3_4_3_rdata[7:0]),
			.w3_4_4_rdata(w3_4_4_rdata[7:0]),
			.w3_4_5_rdata(w3_4_5_rdata[7:0]),
			.w3_4_6_rdata(w3_4_6_rdata[7:0]),
			.w3_5_1_rdata(w3_5_1_rdata[7:0]),
			.w3_5_2_rdata(w3_5_2_rdata[7:0]),
			.w3_5_3_rdata(w3_5_3_rdata[7:0]),
			.w3_5_4_rdata(w3_5_4_rdata[7:0]),
			.w3_5_5_rdata(w3_5_5_rdata[7:0]),
			.w3_5_6_rdata(w3_5_6_rdata[7:0]),
			.w3_6_1_rdata(w3_6_1_rdata[7:0]),
			.w3_6_2_rdata(w3_6_2_rdata[7:0]),
			.w3_6_3_rdata(w3_6_3_rdata[7:0]),
			.w3_6_4_rdata(w3_6_4_rdata[7:0]),
			.w3_6_5_rdata(w3_6_5_rdata[7:0]),
			.w3_6_6_rdata(w3_6_6_rdata[7:0]),
			.w3_7_1_rdata(w3_7_1_rdata[7:0]),
			.w3_7_2_rdata(w3_7_2_rdata[7:0]),
			.w3_7_3_rdata(w3_7_3_rdata[7:0]),
			.w3_7_4_rdata(w3_7_4_rdata[7:0]),
			.w3_7_5_rdata(w3_7_5_rdata[7:0]),
			.w3_7_6_rdata(w3_7_6_rdata[7:0]),
			.w3_8_1_rdata(w3_8_1_rdata[7:0]),
			.w3_8_2_rdata(w3_8_2_rdata[7:0]),
			.w3_8_3_rdata(w3_8_3_rdata[7:0]),
			.w3_8_4_rdata(w3_8_4_rdata[7:0]),
			.w3_8_5_rdata(w3_8_5_rdata[7:0]),
			.w3_8_6_rdata(w3_8_6_rdata[7:0]),
			.w3_9_1_rdata(w3_9_1_rdata[7:0]),
			.w3_9_2_rdata(w3_9_2_rdata[7:0]),
			.w3_9_3_rdata(w3_9_3_rdata[7:0]),
			.w3_9_4_rdata(w3_9_4_rdata[7:0]),
			.w3_9_5_rdata(w3_9_5_rdata[7:0]),
			.w3_9_6_rdata(w3_9_6_rdata[7:0]),
			.w3_10_1_rdata(w3_10_1_rdata[7:0]),
			.w3_10_2_rdata(w3_10_2_rdata[7:0]),
			.w3_10_3_rdata(w3_10_3_rdata[7:0]),
			.w3_10_4_rdata(w3_10_4_rdata[7:0]),
			.w3_10_5_rdata(w3_10_5_rdata[7:0]),
			.w3_10_6_rdata(w3_10_6_rdata[7:0]),
			.w3_11_1_rdata(w3_11_1_rdata[7:0]),
			.w3_11_2_rdata(w3_11_2_rdata[7:0]),
			.w3_11_3_rdata(w3_11_3_rdata[7:0]),
			.w3_11_4_rdata(w3_11_4_rdata[7:0]),
			.w3_11_5_rdata(w3_11_5_rdata[7:0]),
			.w3_11_6_rdata(w3_11_6_rdata[7:0]),
			.w3_12_1_rdata(w3_12_1_rdata[7:0]),
			.w3_12_2_rdata(w3_12_2_rdata[7:0]),
			.w3_12_3_rdata(w3_12_3_rdata[7:0]),
			.w3_12_4_rdata(w3_12_4_rdata[7:0]),
			.w3_12_5_rdata(w3_12_5_rdata[7:0]),
			.w3_12_6_rdata(w3_12_6_rdata[7:0]),
			.w3_13_1_rdata(w3_13_1_rdata[7:0]),
			.w3_13_2_rdata(w3_13_2_rdata[7:0]),
			.w3_13_3_rdata(w3_13_3_rdata[7:0]),
			.w3_13_4_rdata(w3_13_4_rdata[7:0]),
			.w3_13_5_rdata(w3_13_5_rdata[7:0]),
			.w3_13_6_rdata(w3_13_6_rdata[7:0]),
			.w3_14_1_rdata(w3_14_1_rdata[7:0]),
			.w3_14_2_rdata(w3_14_2_rdata[7:0]),
			.w3_14_3_rdata(w3_14_3_rdata[7:0]),
			.w3_14_4_rdata(w3_14_4_rdata[7:0]),
			.w3_14_5_rdata(w3_14_5_rdata[7:0]),
			.w3_14_6_rdata(w3_14_6_rdata[7:0]),
			.w3_15_1_rdata(w3_15_1_rdata[7:0]),
			.w3_15_2_rdata(w3_15_2_rdata[7:0]),
			.w3_15_3_rdata(w3_15_3_rdata[7:0]),
			.w3_15_4_rdata(w3_15_4_rdata[7:0]),
			.w3_15_5_rdata(w3_15_5_rdata[7:0]),
			.w3_15_6_rdata(w3_15_6_rdata[7:0]),
			.w3_16_1_rdata(w3_16_1_rdata[7:0]),
			.w3_16_2_rdata(w3_16_2_rdata[7:0]),
			.w3_16_3_rdata(w3_16_3_rdata[7:0]),
			.w3_16_4_rdata(w3_16_4_rdata[7:0]),
			.w3_16_5_rdata(w3_16_5_rdata[7:0]),
			.w3_16_6_rdata(w3_16_6_rdata[7:0]),
			.clk(clk),
			.w3_raddr(w3_raddr[4:0]));
w5_rom w5_rom(/*autoinst*/
			.w5_1_rdata(w5_1_rdata[7:0]),
			.w5_2_rdata(w5_2_rdata[7:0]),
			.w5_3_rdata(w5_3_rdata[7:0]),
			.w5_4_rdata(w5_4_rdata[7:0]),
			.w5_5_rdata(w5_5_rdata[7:0]),
			.w5_6_rdata(w5_6_rdata[7:0]),
			.w5_7_rdata(w5_7_rdata[7:0]),
			.w5_8_rdata(w5_8_rdata[7:0]),
			.w5_9_rdata(w5_9_rdata[7:0]),
			.w5_10_rdata(w5_10_rdata[7:0]),
			.w5_11_rdata(w5_11_rdata[7:0]),
			.w5_12_rdata(w5_12_rdata[7:0]),
			.w5_13_rdata(w5_13_rdata[7:0]),
			.w5_14_rdata(w5_14_rdata[7:0]),
			.w5_15_rdata(w5_15_rdata[7:0]),
			.w5_16_rdata(w5_16_rdata[7:0]),
			.w5_17_rdata(w5_17_rdata[7:0]),
			.w5_18_rdata(w5_18_rdata[7:0]),
			.w5_19_rdata(w5_19_rdata[7:0]),
			.w5_20_rdata(w5_20_rdata[7:0]),
			.w5_21_rdata(w5_21_rdata[7:0]),
			.w5_22_rdata(w5_22_rdata[7:0]),
			.w5_23_rdata(w5_23_rdata[7:0]),
			.w5_24_rdata(w5_24_rdata[7:0]),
			.w5_25_rdata(w5_25_rdata[7:0]),
			.w5_26_rdata(w5_26_rdata[7:0]),
			.w5_27_rdata(w5_27_rdata[7:0]),
			.w5_28_rdata(w5_28_rdata[7:0]),
			.w5_29_rdata(w5_29_rdata[7:0]),
			.w5_30_rdata(w5_30_rdata[7:0]),
			.w5_31_rdata(w5_31_rdata[7:0]),
			.w5_32_rdata(w5_32_rdata[7:0]),
			.w5_33_rdata(w5_33_rdata[7:0]),
			.w5_34_rdata(w5_34_rdata[7:0]),
			.w5_35_rdata(w5_35_rdata[7:0]),
			.w5_36_rdata(w5_36_rdata[7:0]),
			.w5_37_rdata(w5_37_rdata[7:0]),
			.w5_38_rdata(w5_38_rdata[7:0]),
			.w5_39_rdata(w5_39_rdata[7:0]),
			.w5_40_rdata(w5_40_rdata[7:0]),
			.w5_41_rdata(w5_41_rdata[7:0]),
			.w5_42_rdata(w5_42_rdata[7:0]),
			.w5_43_rdata(w5_43_rdata[7:0]),
			.w5_44_rdata(w5_44_rdata[7:0]),
			.w5_45_rdata(w5_45_rdata[7:0]),
			.w5_46_rdata(w5_46_rdata[7:0]),
			.w5_47_rdata(w5_47_rdata[7:0]),
			.w5_48_rdata(w5_48_rdata[7:0]),
			.w5_49_rdata(w5_49_rdata[7:0]),
			.w5_50_rdata(w5_50_rdata[7:0]),
			.w5_51_rdata(w5_51_rdata[7:0]),
			.w5_52_rdata(w5_52_rdata[7:0]),
			.w5_53_rdata(w5_53_rdata[7:0]),
			.w5_54_rdata(w5_54_rdata[7:0]),
			.w5_55_rdata(w5_55_rdata[7:0]),
			.w5_56_rdata(w5_56_rdata[7:0]),
			.w5_57_rdata(w5_57_rdata[7:0]),
			.w5_58_rdata(w5_58_rdata[7:0]),
			.w5_59_rdata(w5_59_rdata[7:0]),
			.w5_60_rdata(w5_60_rdata[7:0]),
			.w5_61_rdata(w5_61_rdata[7:0]),
			.w5_62_rdata(w5_62_rdata[7:0]),
			.w5_63_rdata(w5_63_rdata[7:0]),
			.w5_64_rdata(w5_64_rdata[7:0]),
			.w5_65_rdata(w5_65_rdata[7:0]),
			.w5_66_rdata(w5_66_rdata[7:0]),
			.w5_67_rdata(w5_67_rdata[7:0]),
			.w5_68_rdata(w5_68_rdata[7:0]),
			.w5_69_rdata(w5_69_rdata[7:0]),
			.w5_70_rdata(w5_70_rdata[7:0]),
			.w5_71_rdata(w5_71_rdata[7:0]),
			.w5_72_rdata(w5_72_rdata[7:0]),
			.w5_73_rdata(w5_73_rdata[7:0]),
			.w5_74_rdata(w5_74_rdata[7:0]),
			.w5_75_rdata(w5_75_rdata[7:0]),
			.w5_76_rdata(w5_76_rdata[7:0]),
			.w5_77_rdata(w5_77_rdata[7:0]),
			.w5_78_rdata(w5_78_rdata[7:0]),
			.w5_79_rdata(w5_79_rdata[7:0]),
			.w5_80_rdata(w5_80_rdata[7:0]),
			.w5_81_rdata(w5_81_rdata[7:0]),
			.w5_82_rdata(w5_82_rdata[7:0]),
			.w5_83_rdata(w5_83_rdata[7:0]),
			.w5_84_rdata(w5_84_rdata[7:0]),
			.w5_85_rdata(w5_85_rdata[7:0]),
			.w5_86_rdata(w5_86_rdata[7:0]),
			.w5_87_rdata(w5_87_rdata[7:0]),
			.w5_88_rdata(w5_88_rdata[7:0]),
			.w5_89_rdata(w5_89_rdata[7:0]),
			.w5_90_rdata(w5_90_rdata[7:0]),
			.w5_91_rdata(w5_91_rdata[7:0]),
			.w5_92_rdata(w5_92_rdata[7:0]),
			.w5_93_rdata(w5_93_rdata[7:0]),
			.w5_94_rdata(w5_94_rdata[7:0]),
			.w5_95_rdata(w5_95_rdata[7:0]),
			.w5_96_rdata(w5_96_rdata[7:0]),
			.w5_97_rdata(w5_97_rdata[7:0]),
			.w5_98_rdata(w5_98_rdata[7:0]),
			.w5_99_rdata(w5_99_rdata[7:0]),
			.w5_100_rdata(w5_100_rdata[7:0]),
			.w5_101_rdata(w5_101_rdata[7:0]),
			.w5_102_rdata(w5_102_rdata[7:0]),
			.w5_103_rdata(w5_103_rdata[7:0]),
			.w5_104_rdata(w5_104_rdata[7:0]),
			.w5_105_rdata(w5_105_rdata[7:0]),
			.w5_106_rdata(w5_106_rdata[7:0]),
			.w5_107_rdata(w5_107_rdata[7:0]),
			.w5_108_rdata(w5_108_rdata[7:0]),
			.w5_109_rdata(w5_109_rdata[7:0]),
			.w5_110_rdata(w5_110_rdata[7:0]),
			.w5_111_rdata(w5_111_rdata[7:0]),
			.w5_112_rdata(w5_112_rdata[7:0]),
			.w5_113_rdata(w5_113_rdata[7:0]),
			.w5_114_rdata(w5_114_rdata[7:0]),
			.w5_115_rdata(w5_115_rdata[7:0]),
			.w5_116_rdata(w5_116_rdata[7:0]),
			.w5_117_rdata(w5_117_rdata[7:0]),
			.w5_118_rdata(w5_118_rdata[7:0]),
			.w5_119_rdata(w5_119_rdata[7:0]),
			.w5_120_rdata(w5_120_rdata[7:0]),
			.clk(clk),
			.w5_raddr(w5_raddr[8:0]));
w6_rom w6_rom(/*autoinst*/
			.w6_1_rdata(w6_1_rdata[7:0]),
			.w6_2_rdata(w6_2_rdata[7:0]),
			.w6_3_rdata(w6_3_rdata[7:0]),
			.w6_4_rdata(w6_4_rdata[7:0]),
			.w6_5_rdata(w6_5_rdata[7:0]),
			.w6_6_rdata(w6_6_rdata[7:0]),
			.w6_7_rdata(w6_7_rdata[7:0]),
			.w6_8_rdata(w6_8_rdata[7:0]),
			.w6_9_rdata(w6_9_rdata[7:0]),
			.w6_10_rdata(w6_10_rdata[7:0]),
			.w6_11_rdata(w6_11_rdata[7:0]),
			.w6_12_rdata(w6_12_rdata[7:0]),
			.w6_13_rdata(w6_13_rdata[7:0]),
			.w6_14_rdata(w6_14_rdata[7:0]),
			.w6_15_rdata(w6_15_rdata[7:0]),
			.w6_16_rdata(w6_16_rdata[7:0]),
			.w6_17_rdata(w6_17_rdata[7:0]),
			.w6_18_rdata(w6_18_rdata[7:0]),
			.w6_19_rdata(w6_19_rdata[7:0]),
			.w6_20_rdata(w6_20_rdata[7:0]),
			.w6_21_rdata(w6_21_rdata[7:0]),
			.w6_22_rdata(w6_22_rdata[7:0]),
			.w6_23_rdata(w6_23_rdata[7:0]),
			.w6_24_rdata(w6_24_rdata[7:0]),
			.w6_25_rdata(w6_25_rdata[7:0]),
			.w6_26_rdata(w6_26_rdata[7:0]),
			.w6_27_rdata(w6_27_rdata[7:0]),
			.w6_28_rdata(w6_28_rdata[7:0]),
			.w6_29_rdata(w6_29_rdata[7:0]),
			.w6_30_rdata(w6_30_rdata[7:0]),
			.w6_31_rdata(w6_31_rdata[7:0]),
			.w6_32_rdata(w6_32_rdata[7:0]),
			.w6_33_rdata(w6_33_rdata[7:0]),
			.w6_34_rdata(w6_34_rdata[7:0]),
			.w6_35_rdata(w6_35_rdata[7:0]),
			.w6_36_rdata(w6_36_rdata[7:0]),
			.w6_37_rdata(w6_37_rdata[7:0]),
			.w6_38_rdata(w6_38_rdata[7:0]),
			.w6_39_rdata(w6_39_rdata[7:0]),
			.w6_40_rdata(w6_40_rdata[7:0]),
			.w6_41_rdata(w6_41_rdata[7:0]),
			.w6_42_rdata(w6_42_rdata[7:0]),
			.w6_43_rdata(w6_43_rdata[7:0]),
			.w6_44_rdata(w6_44_rdata[7:0]),
			.w6_45_rdata(w6_45_rdata[7:0]),
			.w6_46_rdata(w6_46_rdata[7:0]),
			.w6_47_rdata(w6_47_rdata[7:0]),
			.w6_48_rdata(w6_48_rdata[7:0]),
			.w6_49_rdata(w6_49_rdata[7:0]),
			.w6_50_rdata(w6_50_rdata[7:0]),
			.w6_51_rdata(w6_51_rdata[7:0]),
			.w6_52_rdata(w6_52_rdata[7:0]),
			.w6_53_rdata(w6_53_rdata[7:0]),
			.w6_54_rdata(w6_54_rdata[7:0]),
			.w6_55_rdata(w6_55_rdata[7:0]),
			.w6_56_rdata(w6_56_rdata[7:0]),
			.w6_57_rdata(w6_57_rdata[7:0]),
			.w6_58_rdata(w6_58_rdata[7:0]),
			.w6_59_rdata(w6_59_rdata[7:0]),
			.w6_60_rdata(w6_60_rdata[7:0]),
			.w6_61_rdata(w6_61_rdata[7:0]),
			.w6_62_rdata(w6_62_rdata[7:0]),
			.w6_63_rdata(w6_63_rdata[7:0]),
			.w6_64_rdata(w6_64_rdata[7:0]),
			.w6_65_rdata(w6_65_rdata[7:0]),
			.w6_66_rdata(w6_66_rdata[7:0]),
			.w6_67_rdata(w6_67_rdata[7:0]),
			.w6_68_rdata(w6_68_rdata[7:0]),
			.w6_69_rdata(w6_69_rdata[7:0]),
			.w6_70_rdata(w6_70_rdata[7:0]),
			.w6_71_rdata(w6_71_rdata[7:0]),
			.w6_72_rdata(w6_72_rdata[7:0]),
			.w6_73_rdata(w6_73_rdata[7:0]),
			.w6_74_rdata(w6_74_rdata[7:0]),
			.w6_75_rdata(w6_75_rdata[7:0]),
			.w6_76_rdata(w6_76_rdata[7:0]),
			.w6_77_rdata(w6_77_rdata[7:0]),
			.w6_78_rdata(w6_78_rdata[7:0]),
			.w6_79_rdata(w6_79_rdata[7:0]),
			.w6_80_rdata(w6_80_rdata[7:0]),
			.w6_81_rdata(w6_81_rdata[7:0]),
			.w6_82_rdata(w6_82_rdata[7:0]),
			.w6_83_rdata(w6_83_rdata[7:0]),
			.w6_84_rdata(w6_84_rdata[7:0]),
			.clk(clk),
			.w6_raddr(w6_raddr[6:0]));
w7_rom w7_rom(/*autoinst*/
			.w7_1_rdata(w7_1_rdata[7:0]),
			.w7_2_rdata(w7_2_rdata[7:0]),
			.w7_3_rdata(w7_3_rdata[7:0]),
			.w7_4_rdata(w7_4_rdata[7:0]),
			.w7_5_rdata(w7_5_rdata[7:0]),
			.w7_6_rdata(w7_6_rdata[7:0]),
			.w7_7_rdata(w7_7_rdata[7:0]),
			.w7_8_rdata(w7_8_rdata[7:0]),
			.w7_9_rdata(w7_9_rdata[7:0]),
			.w7_10_rdata(w7_10_rdata[7:0]),
			.clk(clk),
			.w7_raddr(w7_raddr[6:0]));
conv1_ctrl conv1_ctrl(/*autoinst*/
			.w1_raddr(w1_raddr[4:0]),
			.f1_raddr(f1_raddr[9:0]),
			.f2_waddr(f2_waddr[9:0]),
			.f2_wr_en(f2_wr_en),
			.conv1_done(conv1_done),
			.conv1_clr(conv1_clr),
			.clk(clk),
			.rst_n(rst_n),
			.conv1_start(conv1_start));
pool1_ctrl pool1_ctrl(/*autoinst*/
			.f3_waddr(f3_waddr[7:0]),
			.f3_wr_en(f3_wr_en),
			.f2_raddr(f2_raddr[9:0]),
			.pool1_done(pool1_done),
			.pool1_clr(pool1_clr),
			.clk(clk),
			.rst_n(rst_n),
			.pool1_start(pool1_start));
conv2_ctrl conv2_ctrl(/*autoinst*/
			.w3_raddr(w3_raddr[4:0]),
			.f3_raddr(f3_raddr[7:0]),
			.f4_waddr(f4_waddr[6:0]),
			.f4_wr_en(f4_wr_en),
			.conv2_done(conv2_done),
			.conv2_clr(conv2_clr),
			.clk(clk),
			.rst_n(rst_n),
			.conv2_start(conv2_start));
pool2_ctrl pool2_ctrl(/*autoinst*/
			.f5_waddr(f5_waddr[4:0]),
			.f5_wr_en(f5_wr_en),
			.f4_raddr(f4_raddr[6:0]),
			.pool2_done(pool2_done),
			.pool2_clr(pool2_clr),
			.clk(clk),
			.rst_n(rst_n),
			.pool2_start(pool2_start));
fc1_ctrl fc1_ctrl(/*autoinst*/
			.fc1_done(fc1_done),
			.fc1_clr(fc1_clr),
			.f5_raddr(f5_raddr[4:0]),
			.f5_sel(f5_sel[3:0]),
			.w5_raddr(w5_raddr[8:0]),
			.f6_wr_en(f6_wr_en),
			.clk(clk),
			.rst_n(rst_n),
			.fc1_start(fc1_start));
fc2_ctrl fc2_ctrl(/*autoinst*/
			.fc2_done(fc2_done),
			.fc2_clr(fc2_clr),
			.f6_raddr(f6_raddr[6:0]),
			.w6_raddr(w6_raddr[6:0]),
			.f7_wr_en(f7_wr_en),
			.clk(clk),
			.rst_n(rst_n),
			.fc2_start(fc2_start));
fc3_ctrl fc3_ctrl(/*autoinst*/
			.fc3_done(fc3_done),
			.fc3_clr(fc3_clr),
			.f7_raddr(f7_raddr[6:0]),
			.w7_raddr(w7_raddr[6:0]),
			.f8_wr_en(f8_wr_en),
			.clk(clk),
			.rst_n(rst_n),
			.fc3_start(fc3_start));

conv1_exec conv1_exec(/*autoinst*/
			.f2_1_wdata(f2_1_wdata[15:0]),
			.f2_2_wdata(f2_2_wdata[15:0]),
			.f2_3_wdata(f2_3_wdata[15:0]),
			.f2_4_wdata(f2_4_wdata[15:0]),
			.f2_5_wdata(f2_5_wdata[15:0]),
			.f2_6_wdata(f2_6_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.mac1_1(mac1_1[22:0]),
			.mac1_2(mac1_2[22:0]),
			.mac1_3(mac1_3[22:0]),
			.mac1_4(mac1_4[22:0]),
			.mac1_5(mac1_5[22:0]),
			.mac1_6(mac1_6[22:0]));
conv2_exec conv2_exec(/*autoinst*/
			.f4_1_wdata(f4_1_wdata[15:0]),
			.f4_2_wdata(f4_2_wdata[15:0]),
			.f4_3_wdata(f4_3_wdata[15:0]),
			.f4_4_wdata(f4_4_wdata[15:0]),
			.f4_5_wdata(f4_5_wdata[15:0]),
			.f4_6_wdata(f4_6_wdata[15:0]),
			.f4_7_wdata(f4_7_wdata[15:0]),
			.f4_8_wdata(f4_8_wdata[15:0]),
			.f4_9_wdata(f4_9_wdata[15:0]),
			.f4_10_wdata(f4_10_wdata[15:0]),
			.f4_11_wdata(f4_11_wdata[15:0]),
			.f4_12_wdata(f4_12_wdata[15:0]),
			.f4_13_wdata(f4_13_wdata[15:0]),
			.f4_14_wdata(f4_14_wdata[15:0]),
			.f4_15_wdata(f4_15_wdata[15:0]),
			.f4_16_wdata(f4_16_wdata[15:0]),
			.mac2_1_1(mac2_1_1[22:0]),
			.mac2_1_2(mac2_1_2[22:0]),
			.mac2_1_3(mac2_1_3[22:0]),
			.mac2_1_4(mac2_1_4[22:0]),
			.mac2_1_5(mac2_1_5[22:0]),
			.mac2_1_6(mac2_1_6[22:0]),
			.mac2_2_1(mac2_2_1[22:0]),
			.mac2_2_2(mac2_2_2[22:0]),
			.mac2_2_3(mac2_2_3[22:0]),
			.mac2_2_4(mac2_2_4[22:0]),
			.mac2_2_5(mac2_2_5[22:0]),
			.mac2_2_6(mac2_2_6[22:0]),
			.mac2_3_1(mac2_3_1[22:0]),
			.mac2_3_2(mac2_3_2[22:0]),
			.mac2_3_3(mac2_3_3[22:0]),
			.mac2_3_4(mac2_3_4[22:0]),
			.mac2_3_5(mac2_3_5[22:0]),
			.mac2_3_6(mac2_3_6[22:0]),
			.mac2_4_1(mac2_4_1[22:0]),
			.mac2_4_2(mac2_4_2[22:0]),
			.mac2_4_3(mac2_4_3[22:0]),
			.mac2_4_4(mac2_4_4[22:0]),
			.mac2_4_5(mac2_4_5[22:0]),
			.mac2_4_6(mac2_4_6[22:0]),
			.mac2_5_1(mac2_5_1[22:0]),
			.mac2_5_2(mac2_5_2[22:0]),
			.mac2_5_3(mac2_5_3[22:0]),
			.mac2_5_4(mac2_5_4[22:0]),
			.mac2_5_5(mac2_5_5[22:0]),
			.mac2_5_6(mac2_5_6[22:0]),
			.mac2_6_1(mac2_6_1[22:0]),
			.mac2_6_2(mac2_6_2[22:0]),
			.mac2_6_3(mac2_6_3[22:0]),
			.mac2_6_4(mac2_6_4[22:0]),
			.mac2_6_5(mac2_6_5[22:0]),
			.mac2_6_6(mac2_6_6[22:0]),
			.mac2_7_1(mac2_7_1[22:0]),
			.mac2_7_2(mac2_7_2[22:0]),
			.mac2_7_3(mac2_7_3[22:0]),
			.mac2_7_4(mac2_7_4[22:0]),
			.mac2_7_5(mac2_7_5[22:0]),
			.mac2_7_6(mac2_7_6[22:0]),
			.mac2_8_1(mac2_8_1[22:0]),
			.mac2_8_2(mac2_8_2[22:0]),
			.mac2_8_3(mac2_8_3[22:0]),
			.mac2_8_4(mac2_8_4[22:0]),
			.mac2_8_5(mac2_8_5[22:0]),
			.mac2_8_6(mac2_8_6[22:0]),
			.mac2_9_1(mac2_9_1[22:0]),
			.mac2_9_2(mac2_9_2[22:0]),
			.mac2_9_3(mac2_9_3[22:0]),
			.mac2_9_4(mac2_9_4[22:0]),
			.mac2_9_5(mac2_9_5[22:0]),
			.mac2_9_6(mac2_9_6[22:0]),
			.mac2_10_1(mac2_10_1[22:0]),
			.mac2_10_2(mac2_10_2[22:0]),
			.mac2_10_3(mac2_10_3[22:0]),
			.mac2_10_4(mac2_10_4[22:0]),
			.mac2_10_5(mac2_10_5[22:0]),
			.mac2_10_6(mac2_10_6[22:0]),
			.mac2_11_1(mac2_11_1[22:0]),
			.mac2_11_2(mac2_11_2[22:0]),
			.mac2_11_3(mac2_11_3[22:0]),
			.mac2_11_4(mac2_11_4[22:0]),
			.mac2_11_5(mac2_11_5[22:0]),
			.mac2_11_6(mac2_11_6[22:0]),
			.mac2_12_1(mac2_12_1[22:0]),
			.mac2_12_2(mac2_12_2[22:0]),
			.mac2_12_3(mac2_12_3[22:0]),
			.mac2_12_4(mac2_12_4[22:0]),
			.mac2_12_5(mac2_12_5[22:0]),
			.mac2_12_6(mac2_12_6[22:0]),
			.mac2_13_1(mac2_13_1[22:0]),
			.mac2_13_2(mac2_13_2[22:0]),
			.mac2_13_3(mac2_13_3[22:0]),
			.mac2_13_4(mac2_13_4[22:0]),
			.mac2_13_5(mac2_13_5[22:0]),
			.mac2_13_6(mac2_13_6[22:0]),
			.mac2_14_1(mac2_14_1[22:0]),
			.mac2_14_2(mac2_14_2[22:0]),
			.mac2_14_3(mac2_14_3[22:0]),
			.mac2_14_4(mac2_14_4[22:0]),
			.mac2_14_5(mac2_14_5[22:0]),
			.mac2_14_6(mac2_14_6[22:0]),
			.mac2_15_1(mac2_15_1[22:0]),
			.mac2_15_2(mac2_15_2[22:0]),
			.mac2_15_3(mac2_15_3[22:0]),
			.mac2_15_4(mac2_15_4[22:0]),
			.mac2_15_5(mac2_15_5[22:0]),
			.mac2_15_6(mac2_15_6[22:0]),
			.mac2_16_1(mac2_16_1[22:0]),
			.mac2_16_2(mac2_16_2[22:0]),
			.mac2_16_3(mac2_16_3[22:0]),
			.mac2_16_4(mac2_16_4[22:0]),
			.mac2_16_5(mac2_16_5[22:0]),
			.mac2_16_6(mac2_16_6[22:0]),
			.clk(clk),
			.rst_n(rst_n));

pool1_exec pool1_exec(/*autoinst*/
			.f3_1_wdata(f3_1_wdata[15:0]),
			.f3_2_wdata(f3_2_wdata[15:0]),
			.f3_3_wdata(f3_3_wdata[15:0]),
			.f3_4_wdata(f3_4_wdata[15:0]),
			.f3_5_wdata(f3_5_wdata[15:0]),
			.f3_6_wdata(f3_6_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.f2_1_rdata(f2_1_rdata[15:0]),
			.f2_2_rdata(f2_2_rdata[15:0]),
			.f2_3_rdata(f2_3_rdata[15:0]),
			.f2_4_rdata(f2_4_rdata[15:0]),
			.f2_5_rdata(f2_5_rdata[15:0]),
			.f2_6_rdata(f2_6_rdata[15:0]),
			.pool1_clr(pool1_clr));
pool2_exec pool2_exec(/*autoinst*/
			.f5_1_wdata(f5_1_wdata[15:0]),
			.f5_2_wdata(f5_2_wdata[15:0]),
			.f5_3_wdata(f5_3_wdata[15:0]),
			.f5_4_wdata(f5_4_wdata[15:0]),
			.f5_5_wdata(f5_5_wdata[15:0]),
			.f5_6_wdata(f5_6_wdata[15:0]),
			.f5_7_wdata(f5_7_wdata[15:0]),
			.f5_8_wdata(f5_8_wdata[15:0]),
			.f5_9_wdata(f5_9_wdata[15:0]),
			.f5_10_wdata(f5_10_wdata[15:0]),
			.f5_11_wdata(f5_11_wdata[15:0]),
			.f5_12_wdata(f5_12_wdata[15:0]),
			.f5_13_wdata(f5_13_wdata[15:0]),
			.f5_14_wdata(f5_14_wdata[15:0]),
			.f5_15_wdata(f5_15_wdata[15:0]),
			.f5_16_wdata(f5_16_wdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.f4_1_rdata(f4_1_rdata[15:0]),
			.f4_2_rdata(f4_2_rdata[15:0]),
			.f4_3_rdata(f4_3_rdata[15:0]),
			.f4_4_rdata(f4_4_rdata[15:0]),
			.f4_5_rdata(f4_5_rdata[15:0]),
			.f4_6_rdata(f4_6_rdata[15:0]),
			.f4_7_rdata(f4_7_rdata[15:0]),
			.f4_8_rdata(f4_8_rdata[15:0]),
			.f4_9_rdata(f4_9_rdata[15:0]),
			.f4_10_rdata(f4_10_rdata[15:0]),
			.f4_11_rdata(f4_11_rdata[15:0]),
			.f4_12_rdata(f4_12_rdata[15:0]),
			.f4_13_rdata(f4_13_rdata[15:0]),
			.f4_14_rdata(f4_14_rdata[15:0]),
			.f4_15_rdata(f4_15_rdata[15:0]),
			.f4_16_rdata(f4_16_rdata[15:0]),
			.pool2_clr(pool2_clr));

fc1_exec fc1_exec(/*autoinst*/
			.f6_rdata(f6_rdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.f6_wr_en(f6_wr_en),
			.mac3_1(mac3_1[22:0]),
			.mac3_2(mac3_2[22:0]),
			.mac3_3(mac3_3[22:0]),
			.mac3_4(mac3_4[22:0]),
			.mac3_5(mac3_5[22:0]),
			.mac3_6(mac3_6[22:0]),
			.mac3_7(mac3_7[22:0]),
			.mac3_8(mac3_8[22:0]),
			.mac3_9(mac3_9[22:0]),
			.mac3_10(mac3_10[22:0]),
			.mac3_11(mac3_11[22:0]),
			.mac3_12(mac3_12[22:0]),
			.mac3_13(mac3_13[22:0]),
			.mac3_14(mac3_14[22:0]),
			.mac3_15(mac3_15[22:0]),
			.mac3_16(mac3_16[22:0]),
			.mac3_17(mac3_17[22:0]),
			.mac3_18(mac3_18[22:0]),
			.mac3_19(mac3_19[22:0]),
			.mac3_20(mac3_20[22:0]),
			.mac3_21(mac3_21[22:0]),
			.mac3_22(mac3_22[22:0]),
			.mac3_23(mac3_23[22:0]),
			.mac3_24(mac3_24[22:0]),
			.mac3_25(mac3_25[22:0]),
			.mac3_26(mac3_26[22:0]),
			.mac3_27(mac3_27[22:0]),
			.mac3_28(mac3_28[22:0]),
			.mac3_29(mac3_29[22:0]),
			.mac3_30(mac3_30[22:0]),
			.mac3_31(mac3_31[22:0]),
			.mac3_32(mac3_32[22:0]),
			.mac3_33(mac3_33[22:0]),
			.mac3_34(mac3_34[22:0]),
			.mac3_35(mac3_35[22:0]),
			.mac3_36(mac3_36[22:0]),
			.mac3_37(mac3_37[22:0]),
			.mac3_38(mac3_38[22:0]),
			.mac3_39(mac3_39[22:0]),
			.mac3_40(mac3_40[22:0]),
			.mac3_41(mac3_41[22:0]),
			.mac3_42(mac3_42[22:0]),
			.mac3_43(mac3_43[22:0]),
			.mac3_44(mac3_44[22:0]),
			.mac3_45(mac3_45[22:0]),
			.mac3_46(mac3_46[22:0]),
			.mac3_47(mac3_47[22:0]),
			.mac3_48(mac3_48[22:0]),
			.mac3_49(mac3_49[22:0]),
			.mac3_50(mac3_50[22:0]),
			.mac3_51(mac3_51[22:0]),
			.mac3_52(mac3_52[22:0]),
			.mac3_53(mac3_53[22:0]),
			.mac3_54(mac3_54[22:0]),
			.mac3_55(mac3_55[22:0]),
			.mac3_56(mac3_56[22:0]),
			.mac3_57(mac3_57[22:0]),
			.mac3_58(mac3_58[22:0]),
			.mac3_59(mac3_59[22:0]),
			.mac3_60(mac3_60[22:0]),
			.mac3_61(mac3_61[22:0]),
			.mac3_62(mac3_62[22:0]),
			.mac3_63(mac3_63[22:0]),
			.mac3_64(mac3_64[22:0]),
			.mac3_65(mac3_65[22:0]),
			.mac3_66(mac3_66[22:0]),
			.mac3_67(mac3_67[22:0]),
			.mac3_68(mac3_68[22:0]),
			.mac3_69(mac3_69[22:0]),
			.mac3_70(mac3_70[22:0]),
			.mac3_71(mac3_71[22:0]),
			.mac3_72(mac3_72[22:0]),
			.mac3_73(mac3_73[22:0]),
			.mac3_74(mac3_74[22:0]),
			.mac3_75(mac3_75[22:0]),
			.mac3_76(mac3_76[22:0]),
			.mac3_77(mac3_77[22:0]),
			.mac3_78(mac3_78[22:0]),
			.mac3_79(mac3_79[22:0]),
			.mac3_80(mac3_80[22:0]),
			.mac3_81(mac3_81[22:0]),
			.mac3_82(mac3_82[22:0]),
			.mac3_83(mac3_83[22:0]),
			.mac3_84(mac3_84[22:0]),
			.mac3_85(mac3_85[22:0]),
			.mac3_86(mac3_86[22:0]),
			.mac3_87(mac3_87[22:0]),
			.mac3_88(mac3_88[22:0]),
			.mac3_89(mac3_89[22:0]),
			.mac3_90(mac3_90[22:0]),
			.mac3_91(mac3_91[22:0]),
			.mac3_92(mac3_92[22:0]),
			.mac3_93(mac3_93[22:0]),
			.mac3_94(mac3_94[22:0]),
			.mac3_95(mac3_95[22:0]),
			.mac3_96(mac3_96[22:0]),
			.mac3_97(mac3_97[22:0]),
			.mac3_98(mac3_98[22:0]),
			.mac3_99(mac3_99[22:0]),
			.mac3_100(mac3_100[22:0]),
			.mac3_101(mac3_101[22:0]),
			.mac3_102(mac3_102[22:0]),
			.mac3_103(mac3_103[22:0]),
			.mac3_104(mac3_104[22:0]),
			.mac3_105(mac3_105[22:0]),
			.mac3_106(mac3_106[22:0]),
			.mac3_107(mac3_107[22:0]),
			.mac3_108(mac3_108[22:0]),
			.mac3_109(mac3_109[22:0]),
			.mac3_110(mac3_110[22:0]),
			.mac3_111(mac3_111[22:0]),
			.mac3_112(mac3_112[22:0]),
			.mac3_113(mac3_113[22:0]),
			.mac3_114(mac3_114[22:0]),
			.mac3_115(mac3_115[22:0]),
			.mac3_116(mac3_116[22:0]),
			.mac3_117(mac3_117[22:0]),
			.mac3_118(mac3_118[22:0]),
			.mac3_119(mac3_119[22:0]),
			.mac3_120(mac3_120[22:0]),
			.f6_raddr(f6_raddr[6:0]));
fc2_exec fc2_exec(/*autoinst*/
			.f7_rdata(f7_rdata[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.f7_wr_en(f7_wr_en),
			.mac4_1(mac4_1[22:0]),
			.mac4_2(mac4_2[22:0]),
			.mac4_3(mac4_3[22:0]),
			.mac4_4(mac4_4[22:0]),
			.mac4_5(mac4_5[22:0]),
			.mac4_6(mac4_6[22:0]),
			.mac4_7(mac4_7[22:0]),
			.mac4_8(mac4_8[22:0]),
			.mac4_9(mac4_9[22:0]),
			.mac4_10(mac4_10[22:0]),
			.mac4_11(mac4_11[22:0]),
			.mac4_12(mac4_12[22:0]),
			.mac4_13(mac4_13[22:0]),
			.mac4_14(mac4_14[22:0]),
			.mac4_15(mac4_15[22:0]),
			.mac4_16(mac4_16[22:0]),
			.mac4_17(mac4_17[22:0]),
			.mac4_18(mac4_18[22:0]),
			.mac4_19(mac4_19[22:0]),
			.mac4_20(mac4_20[22:0]),
			.mac4_21(mac4_21[22:0]),
			.mac4_22(mac4_22[22:0]),
			.mac4_23(mac4_23[22:0]),
			.mac4_24(mac4_24[22:0]),
			.mac4_25(mac4_25[22:0]),
			.mac4_26(mac4_26[22:0]),
			.mac4_27(mac4_27[22:0]),
			.mac4_28(mac4_28[22:0]),
			.mac4_29(mac4_29[22:0]),
			.mac4_30(mac4_30[22:0]),
			.mac4_31(mac4_31[22:0]),
			.mac4_32(mac4_32[22:0]),
			.mac4_33(mac4_33[22:0]),
			.mac4_34(mac4_34[22:0]),
			.mac4_35(mac4_35[22:0]),
			.mac4_36(mac4_36[22:0]),
			.mac4_37(mac4_37[22:0]),
			.mac4_38(mac4_38[22:0]),
			.mac4_39(mac4_39[22:0]),
			.mac4_40(mac4_40[22:0]),
			.mac4_41(mac4_41[22:0]),
			.mac4_42(mac4_42[22:0]),
			.mac4_43(mac4_43[22:0]),
			.mac4_44(mac4_44[22:0]),
			.mac4_45(mac4_45[22:0]),
			.mac4_46(mac4_46[22:0]),
			.mac4_47(mac4_47[22:0]),
			.mac4_48(mac4_48[22:0]),
			.mac4_49(mac4_49[22:0]),
			.mac4_50(mac4_50[22:0]),
			.mac4_51(mac4_51[22:0]),
			.mac4_52(mac4_52[22:0]),
			.mac4_53(mac4_53[22:0]),
			.mac4_54(mac4_54[22:0]),
			.mac4_55(mac4_55[22:0]),
			.mac4_56(mac4_56[22:0]),
			.mac4_57(mac4_57[22:0]),
			.mac4_58(mac4_58[22:0]),
			.mac4_59(mac4_59[22:0]),
			.mac4_60(mac4_60[22:0]),
			.mac4_61(mac4_61[22:0]),
			.mac4_62(mac4_62[22:0]),
			.mac4_63(mac4_63[22:0]),
			.mac4_64(mac4_64[22:0]),
			.mac4_65(mac4_65[22:0]),
			.mac4_66(mac4_66[22:0]),
			.mac4_67(mac4_67[22:0]),
			.mac4_68(mac4_68[22:0]),
			.mac4_69(mac4_69[22:0]),
			.mac4_70(mac4_70[22:0]),
			.mac4_71(mac4_71[22:0]),
			.mac4_72(mac4_72[22:0]),
			.mac4_73(mac4_73[22:0]),
			.mac4_74(mac4_74[22:0]),
			.mac4_75(mac4_75[22:0]),
			.mac4_76(mac4_76[22:0]),
			.mac4_77(mac4_77[22:0]),
			.mac4_78(mac4_78[22:0]),
			.mac4_79(mac4_79[22:0]),
			.mac4_80(mac4_80[22:0]),
			.mac4_81(mac4_81[22:0]),
			.mac4_82(mac4_82[22:0]),
			.mac4_83(mac4_83[22:0]),
			.mac4_84(mac4_84[22:0]),
			.f7_raddr(f7_raddr[6:0]));
fc3_exec fc3_exec(/*autoinst*/
			.class0(class0[15:0]),
			.class1(class1[15:0]),
			.class2(class2[15:0]),
			.class3(class3[15:0]),
			.class4(class4[15:0]),
			.class5(class5[15:0]),
			.class6(class6[15:0]),
			.class7(class7[15:0]),
			.class8(class8[15:0]),
			.class9(class9[15:0]),
			.clk(clk),
			.rst_n(rst_n),
			.f8_wr_en(f8_wr_en),
			.mac5_1(mac5_1[22:0]),
			.mac5_2(mac5_2[22:0]),
			.mac5_3(mac5_3[22:0]),
			.mac5_4(mac5_4[22:0]),
			.mac5_5(mac5_5[22:0]),
			.mac5_6(mac5_6[22:0]),
			.mac5_7(mac5_7[22:0]),
			.mac5_8(mac5_8[22:0]),
			.mac5_9(mac5_9[22:0]),
			.mac5_10(mac5_10[22:0]));

shared_mac_bank shared_mac_bank(/*autoinst*/
			.mac1_1(mac1_1[22:0]),
			.mac1_2(mac1_2[22:0]),
			.mac1_3(mac1_3[22:0]),
			.mac1_4(mac1_4[22:0]),
			.mac1_5(mac1_5[22:0]),
			.mac1_6(mac1_6[22:0]),
			.mac2_1_1(mac2_1_1[22:0]),
			.mac2_1_2(mac2_1_2[22:0]),
			.mac2_1_3(mac2_1_3[22:0]),
			.mac2_1_4(mac2_1_4[22:0]),
			.mac2_1_5(mac2_1_5[22:0]),
			.mac2_1_6(mac2_1_6[22:0]),
			.mac2_2_1(mac2_2_1[22:0]),
			.mac2_2_2(mac2_2_2[22:0]),
			.mac2_2_3(mac2_2_3[22:0]),
			.mac2_2_4(mac2_2_4[22:0]),
			.mac2_2_5(mac2_2_5[22:0]),
			.mac2_2_6(mac2_2_6[22:0]),
			.mac2_3_1(mac2_3_1[22:0]),
			.mac2_3_2(mac2_3_2[22:0]),
			.mac2_3_3(mac2_3_3[22:0]),
			.mac2_3_4(mac2_3_4[22:0]),
			.mac2_3_5(mac2_3_5[22:0]),
			.mac2_3_6(mac2_3_6[22:0]),
			.mac2_4_1(mac2_4_1[22:0]),
			.mac2_4_2(mac2_4_2[22:0]),
			.mac2_4_3(mac2_4_3[22:0]),
			.mac2_4_4(mac2_4_4[22:0]),
			.mac2_4_5(mac2_4_5[22:0]),
			.mac2_4_6(mac2_4_6[22:0]),
			.mac2_5_1(mac2_5_1[22:0]),
			.mac2_5_2(mac2_5_2[22:0]),
			.mac2_5_3(mac2_5_3[22:0]),
			.mac2_5_4(mac2_5_4[22:0]),
			.mac2_5_5(mac2_5_5[22:0]),
			.mac2_5_6(mac2_5_6[22:0]),
			.mac2_6_1(mac2_6_1[22:0]),
			.mac2_6_2(mac2_6_2[22:0]),
			.mac2_6_3(mac2_6_3[22:0]),
			.mac2_6_4(mac2_6_4[22:0]),
			.mac2_6_5(mac2_6_5[22:0]),
			.mac2_6_6(mac2_6_6[22:0]),
			.mac2_7_1(mac2_7_1[22:0]),
			.mac2_7_2(mac2_7_2[22:0]),
			.mac2_7_3(mac2_7_3[22:0]),
			.mac2_7_4(mac2_7_4[22:0]),
			.mac2_7_5(mac2_7_5[22:0]),
			.mac2_7_6(mac2_7_6[22:0]),
			.mac2_8_1(mac2_8_1[22:0]),
			.mac2_8_2(mac2_8_2[22:0]),
			.mac2_8_3(mac2_8_3[22:0]),
			.mac2_8_4(mac2_8_4[22:0]),
			.mac2_8_5(mac2_8_5[22:0]),
			.mac2_8_6(mac2_8_6[22:0]),
			.mac2_9_1(mac2_9_1[22:0]),
			.mac2_9_2(mac2_9_2[22:0]),
			.mac2_9_3(mac2_9_3[22:0]),
			.mac2_9_4(mac2_9_4[22:0]),
			.mac2_9_5(mac2_9_5[22:0]),
			.mac2_9_6(mac2_9_6[22:0]),
			.mac2_10_1(mac2_10_1[22:0]),
			.mac2_10_2(mac2_10_2[22:0]),
			.mac2_10_3(mac2_10_3[22:0]),
			.mac2_10_4(mac2_10_4[22:0]),
			.mac2_10_5(mac2_10_5[22:0]),
			.mac2_10_6(mac2_10_6[22:0]),
			.mac2_11_1(mac2_11_1[22:0]),
			.mac2_11_2(mac2_11_2[22:0]),
			.mac2_11_3(mac2_11_3[22:0]),
			.mac2_11_4(mac2_11_4[22:0]),
			.mac2_11_5(mac2_11_5[22:0]),
			.mac2_11_6(mac2_11_6[22:0]),
			.mac2_12_1(mac2_12_1[22:0]),
			.mac2_12_2(mac2_12_2[22:0]),
			.mac2_12_3(mac2_12_3[22:0]),
			.mac2_12_4(mac2_12_4[22:0]),
			.mac2_12_5(mac2_12_5[22:0]),
			.mac2_12_6(mac2_12_6[22:0]),
			.mac2_13_1(mac2_13_1[22:0]),
			.mac2_13_2(mac2_13_2[22:0]),
			.mac2_13_3(mac2_13_3[22:0]),
			.mac2_13_4(mac2_13_4[22:0]),
			.mac2_13_5(mac2_13_5[22:0]),
			.mac2_13_6(mac2_13_6[22:0]),
			.mac2_14_1(mac2_14_1[22:0]),
			.mac2_14_2(mac2_14_2[22:0]),
			.mac2_14_3(mac2_14_3[22:0]),
			.mac2_14_4(mac2_14_4[22:0]),
			.mac2_14_5(mac2_14_5[22:0]),
			.mac2_14_6(mac2_14_6[22:0]),
			.mac2_15_1(mac2_15_1[22:0]),
			.mac2_15_2(mac2_15_2[22:0]),
			.mac2_15_3(mac2_15_3[22:0]),
			.mac2_15_4(mac2_15_4[22:0]),
			.mac2_15_5(mac2_15_5[22:0]),
			.mac2_15_6(mac2_15_6[22:0]),
			.mac2_16_1(mac2_16_1[22:0]),
			.mac2_16_2(mac2_16_2[22:0]),
			.mac2_16_3(mac2_16_3[22:0]),
			.mac2_16_4(mac2_16_4[22:0]),
			.mac2_16_5(mac2_16_5[22:0]),
			.mac2_16_6(mac2_16_6[22:0]),
			.mac3_1(mac3_1[22:0]),
			.mac3_2(mac3_2[22:0]),
			.mac3_3(mac3_3[22:0]),
			.mac3_4(mac3_4[22:0]),
			.mac3_5(mac3_5[22:0]),
			.mac3_6(mac3_6[22:0]),
			.mac3_7(mac3_7[22:0]),
			.mac3_8(mac3_8[22:0]),
			.mac3_9(mac3_9[22:0]),
			.mac3_10(mac3_10[22:0]),
			.mac3_11(mac3_11[22:0]),
			.mac3_12(mac3_12[22:0]),
			.mac3_13(mac3_13[22:0]),
			.mac3_14(mac3_14[22:0]),
			.mac3_15(mac3_15[22:0]),
			.mac3_16(mac3_16[22:0]),
			.mac3_17(mac3_17[22:0]),
			.mac3_18(mac3_18[22:0]),
			.mac3_19(mac3_19[22:0]),
			.mac3_20(mac3_20[22:0]),
			.mac3_21(mac3_21[22:0]),
			.mac3_22(mac3_22[22:0]),
			.mac3_23(mac3_23[22:0]),
			.mac3_24(mac3_24[22:0]),
			.mac3_25(mac3_25[22:0]),
			.mac3_26(mac3_26[22:0]),
			.mac3_27(mac3_27[22:0]),
			.mac3_28(mac3_28[22:0]),
			.mac3_29(mac3_29[22:0]),
			.mac3_30(mac3_30[22:0]),
			.mac3_31(mac3_31[22:0]),
			.mac3_32(mac3_32[22:0]),
			.mac3_33(mac3_33[22:0]),
			.mac3_34(mac3_34[22:0]),
			.mac3_35(mac3_35[22:0]),
			.mac3_36(mac3_36[22:0]),
			.mac3_37(mac3_37[22:0]),
			.mac3_38(mac3_38[22:0]),
			.mac3_39(mac3_39[22:0]),
			.mac3_40(mac3_40[22:0]),
			.mac3_41(mac3_41[22:0]),
			.mac3_42(mac3_42[22:0]),
			.mac3_43(mac3_43[22:0]),
			.mac3_44(mac3_44[22:0]),
			.mac3_45(mac3_45[22:0]),
			.mac3_46(mac3_46[22:0]),
			.mac3_47(mac3_47[22:0]),
			.mac3_48(mac3_48[22:0]),
			.mac3_49(mac3_49[22:0]),
			.mac3_50(mac3_50[22:0]),
			.mac3_51(mac3_51[22:0]),
			.mac3_52(mac3_52[22:0]),
			.mac3_53(mac3_53[22:0]),
			.mac3_54(mac3_54[22:0]),
			.mac3_55(mac3_55[22:0]),
			.mac3_56(mac3_56[22:0]),
			.mac3_57(mac3_57[22:0]),
			.mac3_58(mac3_58[22:0]),
			.mac3_59(mac3_59[22:0]),
			.mac3_60(mac3_60[22:0]),
			.mac3_61(mac3_61[22:0]),
			.mac3_62(mac3_62[22:0]),
			.mac3_63(mac3_63[22:0]),
			.mac3_64(mac3_64[22:0]),
			.mac3_65(mac3_65[22:0]),
			.mac3_66(mac3_66[22:0]),
			.mac3_67(mac3_67[22:0]),
			.mac3_68(mac3_68[22:0]),
			.mac3_69(mac3_69[22:0]),
			.mac3_70(mac3_70[22:0]),
			.mac3_71(mac3_71[22:0]),
			.mac3_72(mac3_72[22:0]),
			.mac3_73(mac3_73[22:0]),
			.mac3_74(mac3_74[22:0]),
			.mac3_75(mac3_75[22:0]),
			.mac3_76(mac3_76[22:0]),
			.mac3_77(mac3_77[22:0]),
			.mac3_78(mac3_78[22:0]),
			.mac3_79(mac3_79[22:0]),
			.mac3_80(mac3_80[22:0]),
			.mac3_81(mac3_81[22:0]),
			.mac3_82(mac3_82[22:0]),
			.mac3_83(mac3_83[22:0]),
			.mac3_84(mac3_84[22:0]),
			.mac3_85(mac3_85[22:0]),
			.mac3_86(mac3_86[22:0]),
			.mac3_87(mac3_87[22:0]),
			.mac3_88(mac3_88[22:0]),
			.mac3_89(mac3_89[22:0]),
			.mac3_90(mac3_90[22:0]),
			.mac3_91(mac3_91[22:0]),
			.mac3_92(mac3_92[22:0]),
			.mac3_93(mac3_93[22:0]),
			.mac3_94(mac3_94[22:0]),
			.mac3_95(mac3_95[22:0]),
			.mac3_96(mac3_96[22:0]),
			.mac3_97(mac3_97[22:0]),
			.mac3_98(mac3_98[22:0]),
			.mac3_99(mac3_99[22:0]),
			.mac3_100(mac3_100[22:0]),
			.mac3_101(mac3_101[22:0]),
			.mac3_102(mac3_102[22:0]),
			.mac3_103(mac3_103[22:0]),
			.mac3_104(mac3_104[22:0]),
			.mac3_105(mac3_105[22:0]),
			.mac3_106(mac3_106[22:0]),
			.mac3_107(mac3_107[22:0]),
			.mac3_108(mac3_108[22:0]),
			.mac3_109(mac3_109[22:0]),
			.mac3_110(mac3_110[22:0]),
			.mac3_111(mac3_111[22:0]),
			.mac3_112(mac3_112[22:0]),
			.mac3_113(mac3_113[22:0]),
			.mac3_114(mac3_114[22:0]),
			.mac3_115(mac3_115[22:0]),
			.mac3_116(mac3_116[22:0]),
			.mac3_117(mac3_117[22:0]),
			.mac3_118(mac3_118[22:0]),
			.mac3_119(mac3_119[22:0]),
			.mac3_120(mac3_120[22:0]),
			.mac4_1(mac4_1[22:0]),
			.mac4_2(mac4_2[22:0]),
			.mac4_3(mac4_3[22:0]),
			.mac4_4(mac4_4[22:0]),
			.mac4_5(mac4_5[22:0]),
			.mac4_6(mac4_6[22:0]),
			.mac4_7(mac4_7[22:0]),
			.mac4_8(mac4_8[22:0]),
			.mac4_9(mac4_9[22:0]),
			.mac4_10(mac4_10[22:0]),
			.mac4_11(mac4_11[22:0]),
			.mac4_12(mac4_12[22:0]),
			.mac4_13(mac4_13[22:0]),
			.mac4_14(mac4_14[22:0]),
			.mac4_15(mac4_15[22:0]),
			.mac4_16(mac4_16[22:0]),
			.mac4_17(mac4_17[22:0]),
			.mac4_18(mac4_18[22:0]),
			.mac4_19(mac4_19[22:0]),
			.mac4_20(mac4_20[22:0]),
			.mac4_21(mac4_21[22:0]),
			.mac4_22(mac4_22[22:0]),
			.mac4_23(mac4_23[22:0]),
			.mac4_24(mac4_24[22:0]),
			.mac4_25(mac4_25[22:0]),
			.mac4_26(mac4_26[22:0]),
			.mac4_27(mac4_27[22:0]),
			.mac4_28(mac4_28[22:0]),
			.mac4_29(mac4_29[22:0]),
			.mac4_30(mac4_30[22:0]),
			.mac4_31(mac4_31[22:0]),
			.mac4_32(mac4_32[22:0]),
			.mac4_33(mac4_33[22:0]),
			.mac4_34(mac4_34[22:0]),
			.mac4_35(mac4_35[22:0]),
			.mac4_36(mac4_36[22:0]),
			.mac4_37(mac4_37[22:0]),
			.mac4_38(mac4_38[22:0]),
			.mac4_39(mac4_39[22:0]),
			.mac4_40(mac4_40[22:0]),
			.mac4_41(mac4_41[22:0]),
			.mac4_42(mac4_42[22:0]),
			.mac4_43(mac4_43[22:0]),
			.mac4_44(mac4_44[22:0]),
			.mac4_45(mac4_45[22:0]),
			.mac4_46(mac4_46[22:0]),
			.mac4_47(mac4_47[22:0]),
			.mac4_48(mac4_48[22:0]),
			.mac4_49(mac4_49[22:0]),
			.mac4_50(mac4_50[22:0]),
			.mac4_51(mac4_51[22:0]),
			.mac4_52(mac4_52[22:0]),
			.mac4_53(mac4_53[22:0]),
			.mac4_54(mac4_54[22:0]),
			.mac4_55(mac4_55[22:0]),
			.mac4_56(mac4_56[22:0]),
			.mac4_57(mac4_57[22:0]),
			.mac4_58(mac4_58[22:0]),
			.mac4_59(mac4_59[22:0]),
			.mac4_60(mac4_60[22:0]),
			.mac4_61(mac4_61[22:0]),
			.mac4_62(mac4_62[22:0]),
			.mac4_63(mac4_63[22:0]),
			.mac4_64(mac4_64[22:0]),
			.mac4_65(mac4_65[22:0]),
			.mac4_66(mac4_66[22:0]),
			.mac4_67(mac4_67[22:0]),
			.mac4_68(mac4_68[22:0]),
			.mac4_69(mac4_69[22:0]),
			.mac4_70(mac4_70[22:0]),
			.mac4_71(mac4_71[22:0]),
			.mac4_72(mac4_72[22:0]),
			.mac4_73(mac4_73[22:0]),
			.mac4_74(mac4_74[22:0]),
			.mac4_75(mac4_75[22:0]),
			.mac4_76(mac4_76[22:0]),
			.mac4_77(mac4_77[22:0]),
			.mac4_78(mac4_78[22:0]),
			.mac4_79(mac4_79[22:0]),
			.mac4_80(mac4_80[22:0]),
			.mac4_81(mac4_81[22:0]),
			.mac4_82(mac4_82[22:0]),
			.mac4_83(mac4_83[22:0]),
			.mac4_84(mac4_84[22:0]),
			.mac5_1(mac5_1[22:0]),
			.mac5_2(mac5_2[22:0]),
			.mac5_3(mac5_3[22:0]),
			.mac5_4(mac5_4[22:0]),
			.mac5_5(mac5_5[22:0]),
			.mac5_6(mac5_6[22:0]),
			.mac5_7(mac5_7[22:0]),
			.mac5_8(mac5_8[22:0]),
			.mac5_9(mac5_9[22:0]),
			.mac5_10(mac5_10[22:0]),
			.clk(clk),
			.f1_rdata(f1_rdata[7:0]),
			.w1_1_rdata(w1_1_rdata[7:0]),
			.w1_2_rdata(w1_2_rdata[7:0]),
			.w1_3_rdata(w1_3_rdata[7:0]),
			.w1_4_rdata(w1_4_rdata[7:0]),
			.w1_5_rdata(w1_5_rdata[7:0]),
			.w1_6_rdata(w1_6_rdata[7:0]),
			.f3_1_rdata(f3_1_rdata[15:0]),
			.f3_2_rdata(f3_2_rdata[15:0]),
			.f3_3_rdata(f3_3_rdata[15:0]),
			.f3_4_rdata(f3_4_rdata[15:0]),
			.f3_5_rdata(f3_5_rdata[15:0]),
			.f3_6_rdata(f3_6_rdata[15:0]),
			.w3_1_1_rdata(w3_1_1_rdata[7:0]),
			.w3_1_2_rdata(w3_1_2_rdata[7:0]),
			.w3_1_3_rdata(w3_1_3_rdata[7:0]),
			.w3_1_4_rdata(w3_1_4_rdata[7:0]),
			.w3_1_5_rdata(w3_1_5_rdata[7:0]),
			.w3_1_6_rdata(w3_1_6_rdata[7:0]),
			.w3_2_1_rdata(w3_2_1_rdata[7:0]),
			.w3_2_2_rdata(w3_2_2_rdata[7:0]),
			.w3_2_3_rdata(w3_2_3_rdata[7:0]),
			.w3_2_4_rdata(w3_2_4_rdata[7:0]),
			.w3_2_5_rdata(w3_2_5_rdata[7:0]),
			.w3_2_6_rdata(w3_2_6_rdata[7:0]),
			.w3_3_1_rdata(w3_3_1_rdata[7:0]),
			.w3_3_2_rdata(w3_3_2_rdata[7:0]),
			.w3_3_3_rdata(w3_3_3_rdata[7:0]),
			.w3_3_4_rdata(w3_3_4_rdata[7:0]),
			.w3_3_5_rdata(w3_3_5_rdata[7:0]),
			.w3_3_6_rdata(w3_3_6_rdata[7:0]),
			.w3_4_1_rdata(w3_4_1_rdata[7:0]),
			.w3_4_2_rdata(w3_4_2_rdata[7:0]),
			.w3_4_3_rdata(w3_4_3_rdata[7:0]),
			.w3_4_4_rdata(w3_4_4_rdata[7:0]),
			.w3_4_5_rdata(w3_4_5_rdata[7:0]),
			.w3_4_6_rdata(w3_4_6_rdata[7:0]),
			.w3_5_1_rdata(w3_5_1_rdata[7:0]),
			.w3_5_2_rdata(w3_5_2_rdata[7:0]),
			.w3_5_3_rdata(w3_5_3_rdata[7:0]),
			.w3_5_4_rdata(w3_5_4_rdata[7:0]),
			.w3_5_5_rdata(w3_5_5_rdata[7:0]),
			.w3_5_6_rdata(w3_5_6_rdata[7:0]),
			.w3_6_1_rdata(w3_6_1_rdata[7:0]),
			.w3_6_2_rdata(w3_6_2_rdata[7:0]),
			.w3_6_3_rdata(w3_6_3_rdata[7:0]),
			.w3_6_4_rdata(w3_6_4_rdata[7:0]),
			.w3_6_5_rdata(w3_6_5_rdata[7:0]),
			.w3_6_6_rdata(w3_6_6_rdata[7:0]),
			.w3_7_1_rdata(w3_7_1_rdata[7:0]),
			.w3_7_2_rdata(w3_7_2_rdata[7:0]),
			.w3_7_3_rdata(w3_7_3_rdata[7:0]),
			.w3_7_4_rdata(w3_7_4_rdata[7:0]),
			.w3_7_5_rdata(w3_7_5_rdata[7:0]),
			.w3_7_6_rdata(w3_7_6_rdata[7:0]),
			.w3_8_1_rdata(w3_8_1_rdata[7:0]),
			.w3_8_2_rdata(w3_8_2_rdata[7:0]),
			.w3_8_3_rdata(w3_8_3_rdata[7:0]),
			.w3_8_4_rdata(w3_8_4_rdata[7:0]),
			.w3_8_5_rdata(w3_8_5_rdata[7:0]),
			.w3_8_6_rdata(w3_8_6_rdata[7:0]),
			.w3_9_1_rdata(w3_9_1_rdata[7:0]),
			.w3_9_2_rdata(w3_9_2_rdata[7:0]),
			.w3_9_3_rdata(w3_9_3_rdata[7:0]),
			.w3_9_4_rdata(w3_9_4_rdata[7:0]),
			.w3_9_5_rdata(w3_9_5_rdata[7:0]),
			.w3_9_6_rdata(w3_9_6_rdata[7:0]),
			.w3_10_1_rdata(w3_10_1_rdata[7:0]),
			.w3_10_2_rdata(w3_10_2_rdata[7:0]),
			.w3_10_3_rdata(w3_10_3_rdata[7:0]),
			.w3_10_4_rdata(w3_10_4_rdata[7:0]),
			.w3_10_5_rdata(w3_10_5_rdata[7:0]),
			.w3_10_6_rdata(w3_10_6_rdata[7:0]),
			.w3_11_1_rdata(w3_11_1_rdata[7:0]),
			.w3_11_2_rdata(w3_11_2_rdata[7:0]),
			.w3_11_3_rdata(w3_11_3_rdata[7:0]),
			.w3_11_4_rdata(w3_11_4_rdata[7:0]),
			.w3_11_5_rdata(w3_11_5_rdata[7:0]),
			.w3_11_6_rdata(w3_11_6_rdata[7:0]),
			.w3_12_1_rdata(w3_12_1_rdata[7:0]),
			.w3_12_2_rdata(w3_12_2_rdata[7:0]),
			.w3_12_3_rdata(w3_12_3_rdata[7:0]),
			.w3_12_4_rdata(w3_12_4_rdata[7:0]),
			.w3_12_5_rdata(w3_12_5_rdata[7:0]),
			.w3_12_6_rdata(w3_12_6_rdata[7:0]),
			.w3_13_1_rdata(w3_13_1_rdata[7:0]),
			.w3_13_2_rdata(w3_13_2_rdata[7:0]),
			.w3_13_3_rdata(w3_13_3_rdata[7:0]),
			.w3_13_4_rdata(w3_13_4_rdata[7:0]),
			.w3_13_5_rdata(w3_13_5_rdata[7:0]),
			.w3_13_6_rdata(w3_13_6_rdata[7:0]),
			.w3_14_1_rdata(w3_14_1_rdata[7:0]),
			.w3_14_2_rdata(w3_14_2_rdata[7:0]),
			.w3_14_3_rdata(w3_14_3_rdata[7:0]),
			.w3_14_4_rdata(w3_14_4_rdata[7:0]),
			.w3_14_5_rdata(w3_14_5_rdata[7:0]),
			.w3_14_6_rdata(w3_14_6_rdata[7:0]),
			.w3_15_1_rdata(w3_15_1_rdata[7:0]),
			.w3_15_2_rdata(w3_15_2_rdata[7:0]),
			.w3_15_3_rdata(w3_15_3_rdata[7:0]),
			.w3_15_4_rdata(w3_15_4_rdata[7:0]),
			.w3_15_5_rdata(w3_15_5_rdata[7:0]),
			.w3_15_6_rdata(w3_15_6_rdata[7:0]),
			.w3_16_1_rdata(w3_16_1_rdata[7:0]),
			.w3_16_2_rdata(w3_16_2_rdata[7:0]),
			.w3_16_3_rdata(w3_16_3_rdata[7:0]),
			.w3_16_4_rdata(w3_16_4_rdata[7:0]),
			.w3_16_5_rdata(w3_16_5_rdata[7:0]),
			.w3_16_6_rdata(w3_16_6_rdata[7:0]),
			.f5_rdata(f5_rdata[15:0]),
			.w5_1_rdata(w5_1_rdata[7:0]),
			.w5_2_rdata(w5_2_rdata[7:0]),
			.w5_3_rdata(w5_3_rdata[7:0]),
			.w5_4_rdata(w5_4_rdata[7:0]),
			.w5_5_rdata(w5_5_rdata[7:0]),
			.w5_6_rdata(w5_6_rdata[7:0]),
			.w5_7_rdata(w5_7_rdata[7:0]),
			.w5_8_rdata(w5_8_rdata[7:0]),
			.w5_9_rdata(w5_9_rdata[7:0]),
			.w5_10_rdata(w5_10_rdata[7:0]),
			.w5_11_rdata(w5_11_rdata[7:0]),
			.w5_12_rdata(w5_12_rdata[7:0]),
			.w5_13_rdata(w5_13_rdata[7:0]),
			.w5_14_rdata(w5_14_rdata[7:0]),
			.w5_15_rdata(w5_15_rdata[7:0]),
			.w5_16_rdata(w5_16_rdata[7:0]),
			.w5_17_rdata(w5_17_rdata[7:0]),
			.w5_18_rdata(w5_18_rdata[7:0]),
			.w5_19_rdata(w5_19_rdata[7:0]),
			.w5_20_rdata(w5_20_rdata[7:0]),
			.w5_21_rdata(w5_21_rdata[7:0]),
			.w5_22_rdata(w5_22_rdata[7:0]),
			.w5_23_rdata(w5_23_rdata[7:0]),
			.w5_24_rdata(w5_24_rdata[7:0]),
			.w5_25_rdata(w5_25_rdata[7:0]),
			.w5_26_rdata(w5_26_rdata[7:0]),
			.w5_27_rdata(w5_27_rdata[7:0]),
			.w5_28_rdata(w5_28_rdata[7:0]),
			.w5_29_rdata(w5_29_rdata[7:0]),
			.w5_30_rdata(w5_30_rdata[7:0]),
			.w5_31_rdata(w5_31_rdata[7:0]),
			.w5_32_rdata(w5_32_rdata[7:0]),
			.w5_33_rdata(w5_33_rdata[7:0]),
			.w5_34_rdata(w5_34_rdata[7:0]),
			.w5_35_rdata(w5_35_rdata[7:0]),
			.w5_36_rdata(w5_36_rdata[7:0]),
			.w5_37_rdata(w5_37_rdata[7:0]),
			.w5_38_rdata(w5_38_rdata[7:0]),
			.w5_39_rdata(w5_39_rdata[7:0]),
			.w5_40_rdata(w5_40_rdata[7:0]),
			.w5_41_rdata(w5_41_rdata[7:0]),
			.w5_42_rdata(w5_42_rdata[7:0]),
			.w5_43_rdata(w5_43_rdata[7:0]),
			.w5_44_rdata(w5_44_rdata[7:0]),
			.w5_45_rdata(w5_45_rdata[7:0]),
			.w5_46_rdata(w5_46_rdata[7:0]),
			.w5_47_rdata(w5_47_rdata[7:0]),
			.w5_48_rdata(w5_48_rdata[7:0]),
			.w5_49_rdata(w5_49_rdata[7:0]),
			.w5_50_rdata(w5_50_rdata[7:0]),
			.w5_51_rdata(w5_51_rdata[7:0]),
			.w5_52_rdata(w5_52_rdata[7:0]),
			.w5_53_rdata(w5_53_rdata[7:0]),
			.w5_54_rdata(w5_54_rdata[7:0]),
			.w5_55_rdata(w5_55_rdata[7:0]),
			.w5_56_rdata(w5_56_rdata[7:0]),
			.w5_57_rdata(w5_57_rdata[7:0]),
			.w5_58_rdata(w5_58_rdata[7:0]),
			.w5_59_rdata(w5_59_rdata[7:0]),
			.w5_60_rdata(w5_60_rdata[7:0]),
			.w5_61_rdata(w5_61_rdata[7:0]),
			.w5_62_rdata(w5_62_rdata[7:0]),
			.w5_63_rdata(w5_63_rdata[7:0]),
			.w5_64_rdata(w5_64_rdata[7:0]),
			.w5_65_rdata(w5_65_rdata[7:0]),
			.w5_66_rdata(w5_66_rdata[7:0]),
			.w5_67_rdata(w5_67_rdata[7:0]),
			.w5_68_rdata(w5_68_rdata[7:0]),
			.w5_69_rdata(w5_69_rdata[7:0]),
			.w5_70_rdata(w5_70_rdata[7:0]),
			.w5_71_rdata(w5_71_rdata[7:0]),
			.w5_72_rdata(w5_72_rdata[7:0]),
			.w5_73_rdata(w5_73_rdata[7:0]),
			.w5_74_rdata(w5_74_rdata[7:0]),
			.w5_75_rdata(w5_75_rdata[7:0]),
			.w5_76_rdata(w5_76_rdata[7:0]),
			.w5_77_rdata(w5_77_rdata[7:0]),
			.w5_78_rdata(w5_78_rdata[7:0]),
			.w5_79_rdata(w5_79_rdata[7:0]),
			.w5_80_rdata(w5_80_rdata[7:0]),
			.w5_81_rdata(w5_81_rdata[7:0]),
			.w5_82_rdata(w5_82_rdata[7:0]),
			.w5_83_rdata(w5_83_rdata[7:0]),
			.w5_84_rdata(w5_84_rdata[7:0]),
			.w5_85_rdata(w5_85_rdata[7:0]),
			.w5_86_rdata(w5_86_rdata[7:0]),
			.w5_87_rdata(w5_87_rdata[7:0]),
			.w5_88_rdata(w5_88_rdata[7:0]),
			.w5_89_rdata(w5_89_rdata[7:0]),
			.w5_90_rdata(w5_90_rdata[7:0]),
			.w5_91_rdata(w5_91_rdata[7:0]),
			.w5_92_rdata(w5_92_rdata[7:0]),
			.w5_93_rdata(w5_93_rdata[7:0]),
			.w5_94_rdata(w5_94_rdata[7:0]),
			.w5_95_rdata(w5_95_rdata[7:0]),
			.w5_96_rdata(w5_96_rdata[7:0]),
			.w5_97_rdata(w5_97_rdata[7:0]),
			.w5_98_rdata(w5_98_rdata[7:0]),
			.w5_99_rdata(w5_99_rdata[7:0]),
			.w5_100_rdata(w5_100_rdata[7:0]),
			.w5_101_rdata(w5_101_rdata[7:0]),
			.w5_102_rdata(w5_102_rdata[7:0]),
			.w5_103_rdata(w5_103_rdata[7:0]),
			.w5_104_rdata(w5_104_rdata[7:0]),
			.w5_105_rdata(w5_105_rdata[7:0]),
			.w5_106_rdata(w5_106_rdata[7:0]),
			.w5_107_rdata(w5_107_rdata[7:0]),
			.w5_108_rdata(w5_108_rdata[7:0]),
			.w5_109_rdata(w5_109_rdata[7:0]),
			.w5_110_rdata(w5_110_rdata[7:0]),
			.w5_111_rdata(w5_111_rdata[7:0]),
			.w5_112_rdata(w5_112_rdata[7:0]),
			.w5_113_rdata(w5_113_rdata[7:0]),
			.w5_114_rdata(w5_114_rdata[7:0]),
			.w5_115_rdata(w5_115_rdata[7:0]),
			.w5_116_rdata(w5_116_rdata[7:0]),
			.w5_117_rdata(w5_117_rdata[7:0]),
			.w5_118_rdata(w5_118_rdata[7:0]),
			.w5_119_rdata(w5_119_rdata[7:0]),
			.w5_120_rdata(w5_120_rdata[7:0]),
			.f6_rdata(f6_rdata[15:0]),
			.w6_1_rdata(w6_1_rdata[7:0]),
			.w6_2_rdata(w6_2_rdata[7:0]),
			.w6_3_rdata(w6_3_rdata[7:0]),
			.w6_4_rdata(w6_4_rdata[7:0]),
			.w6_5_rdata(w6_5_rdata[7:0]),
			.w6_6_rdata(w6_6_rdata[7:0]),
			.w6_7_rdata(w6_7_rdata[7:0]),
			.w6_8_rdata(w6_8_rdata[7:0]),
			.w6_9_rdata(w6_9_rdata[7:0]),
			.w6_10_rdata(w6_10_rdata[7:0]),
			.w6_11_rdata(w6_11_rdata[7:0]),
			.w6_12_rdata(w6_12_rdata[7:0]),
			.w6_13_rdata(w6_13_rdata[7:0]),
			.w6_14_rdata(w6_14_rdata[7:0]),
			.w6_15_rdata(w6_15_rdata[7:0]),
			.w6_16_rdata(w6_16_rdata[7:0]),
			.w6_17_rdata(w6_17_rdata[7:0]),
			.w6_18_rdata(w6_18_rdata[7:0]),
			.w6_19_rdata(w6_19_rdata[7:0]),
			.w6_20_rdata(w6_20_rdata[7:0]),
			.w6_21_rdata(w6_21_rdata[7:0]),
			.w6_22_rdata(w6_22_rdata[7:0]),
			.w6_23_rdata(w6_23_rdata[7:0]),
			.w6_24_rdata(w6_24_rdata[7:0]),
			.w6_25_rdata(w6_25_rdata[7:0]),
			.w6_26_rdata(w6_26_rdata[7:0]),
			.w6_27_rdata(w6_27_rdata[7:0]),
			.w6_28_rdata(w6_28_rdata[7:0]),
			.w6_29_rdata(w6_29_rdata[7:0]),
			.w6_30_rdata(w6_30_rdata[7:0]),
			.w6_31_rdata(w6_31_rdata[7:0]),
			.w6_32_rdata(w6_32_rdata[7:0]),
			.w6_33_rdata(w6_33_rdata[7:0]),
			.w6_34_rdata(w6_34_rdata[7:0]),
			.w6_35_rdata(w6_35_rdata[7:0]),
			.w6_36_rdata(w6_36_rdata[7:0]),
			.w6_37_rdata(w6_37_rdata[7:0]),
			.w6_38_rdata(w6_38_rdata[7:0]),
			.w6_39_rdata(w6_39_rdata[7:0]),
			.w6_40_rdata(w6_40_rdata[7:0]),
			.w6_41_rdata(w6_41_rdata[7:0]),
			.w6_42_rdata(w6_42_rdata[7:0]),
			.w6_43_rdata(w6_43_rdata[7:0]),
			.w6_44_rdata(w6_44_rdata[7:0]),
			.w6_45_rdata(w6_45_rdata[7:0]),
			.w6_46_rdata(w6_46_rdata[7:0]),
			.w6_47_rdata(w6_47_rdata[7:0]),
			.w6_48_rdata(w6_48_rdata[7:0]),
			.w6_49_rdata(w6_49_rdata[7:0]),
			.w6_50_rdata(w6_50_rdata[7:0]),
			.w6_51_rdata(w6_51_rdata[7:0]),
			.w6_52_rdata(w6_52_rdata[7:0]),
			.w6_53_rdata(w6_53_rdata[7:0]),
			.w6_54_rdata(w6_54_rdata[7:0]),
			.w6_55_rdata(w6_55_rdata[7:0]),
			.w6_56_rdata(w6_56_rdata[7:0]),
			.w6_57_rdata(w6_57_rdata[7:0]),
			.w6_58_rdata(w6_58_rdata[7:0]),
			.w6_59_rdata(w6_59_rdata[7:0]),
			.w6_60_rdata(w6_60_rdata[7:0]),
			.w6_61_rdata(w6_61_rdata[7:0]),
			.w6_62_rdata(w6_62_rdata[7:0]),
			.w6_63_rdata(w6_63_rdata[7:0]),
			.w6_64_rdata(w6_64_rdata[7:0]),
			.w6_65_rdata(w6_65_rdata[7:0]),
			.w6_66_rdata(w6_66_rdata[7:0]),
			.w6_67_rdata(w6_67_rdata[7:0]),
			.w6_68_rdata(w6_68_rdata[7:0]),
			.w6_69_rdata(w6_69_rdata[7:0]),
			.w6_70_rdata(w6_70_rdata[7:0]),
			.w6_71_rdata(w6_71_rdata[7:0]),
			.w6_72_rdata(w6_72_rdata[7:0]),
			.w6_73_rdata(w6_73_rdata[7:0]),
			.w6_74_rdata(w6_74_rdata[7:0]),
			.w6_75_rdata(w6_75_rdata[7:0]),
			.w6_76_rdata(w6_76_rdata[7:0]),
			.w6_77_rdata(w6_77_rdata[7:0]),
			.w6_78_rdata(w6_78_rdata[7:0]),
			.w6_79_rdata(w6_79_rdata[7:0]),
			.w6_80_rdata(w6_80_rdata[7:0]),
			.w6_81_rdata(w6_81_rdata[7:0]),
			.w6_82_rdata(w6_82_rdata[7:0]),
			.w6_83_rdata(w6_83_rdata[7:0]),
			.w6_84_rdata(w6_84_rdata[7:0]),
			.f7_rdata(f7_rdata[15:0]),
			.w7_1_rdata(w7_1_rdata[7:0]),
			.w7_2_rdata(w7_2_rdata[7:0]),
			.w7_3_rdata(w7_3_rdata[7:0]),
			.w7_4_rdata(w7_4_rdata[7:0]),
			.w7_5_rdata(w7_5_rdata[7:0]),
			.w7_6_rdata(w7_6_rdata[7:0]),
			.w7_7_rdata(w7_7_rdata[7:0]),
			.w7_8_rdata(w7_8_rdata[7:0]),
			.w7_9_rdata(w7_9_rdata[7:0]),
			.w7_10_rdata(w7_10_rdata[7:0]),
			.sel(sel),
			.conv1_clr(conv1_clr),
			.conv2_clr(conv2_clr),
			.fc1_clr(fc1_clr),
			.fc2_clr(fc2_clr),
			.fc3_clr(fc3_clr));

get_class	get_class(/*autoinst*/
			.get_class_done(get_class_done),
			.class_value(class_value[15:0]),
			.class_index(class_index[3:0]),
			.clk(clk),
			.class0(class0[15:0]),
			.class1(class1[15:0]),
			.class2(class2[15:0]),
			.class3(class3[15:0]),
			.class4(class4[15:0]),
			.class5(class5[15:0]),
			.class6(class6[15:0]),
			.class7(class7[15:0]),
			.class8(class8[15:0]),
			.class9(class9[15:0]),
			.get_class_start(get_class_start));
//CLK assignment
assign clk = sys_clk;
assign wclk = bd_clk; 

(* max_fanout = 50 *)reg sel_r;
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		sel_r <= 1'b0;
	end
	else if(conv1_start)begin
		sel_r <= 1'b1;
	end
	else if(fc1_start)begin
		sel_r <= 1'b0;
	end
end


assign conv1_start = start;
assign pool1_start = conv1_done;
assign conv2_start = pool1_done;
assign pool2_start = conv2_done;
assign fc1_start   = pool2_done;
assign fc2_start   = fc1_done;
assign fc3_start   = fc2_done;
assign get_class_start  = fc3_done;
assign done 	   = get_class_done;
assign sel 		   = sel_r;
endmodule