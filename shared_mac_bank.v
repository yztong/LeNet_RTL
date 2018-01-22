//==================================================================================================
//  Filename      : shared_mac_bank.v
//  Created On    : 2017-12-29 19:17:28
//  Last Modified : 2018-01-22 14:05:38
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module shared_mac_bank(/*autoport*/
//output
			mac1_1,
			mac1_2,
			mac1_3,
			mac1_4,
			mac1_5,
			mac1_6,
			mac2_1_1,
			mac2_1_2,
			mac2_1_3,
			mac2_1_4,
			mac2_1_5,
			mac2_1_6,
			mac2_2_1,
			mac2_2_2,
			mac2_2_3,
			mac2_2_4,
			mac2_2_5,
			mac2_2_6,
			mac2_3_1,
			mac2_3_2,
			mac2_3_3,
			mac2_3_4,
			mac2_3_5,
			mac2_3_6,
			mac2_4_1,
			mac2_4_2,
			mac2_4_3,
			mac2_4_4,
			mac2_4_5,
			mac2_4_6,
			mac2_5_1,
			mac2_5_2,
			mac2_5_3,
			mac2_5_4,
			mac2_5_5,
			mac2_5_6,
			mac2_6_1,
			mac2_6_2,
			mac2_6_3,
			mac2_6_4,
			mac2_6_5,
			mac2_6_6,
			mac2_7_1,
			mac2_7_2,
			mac2_7_3,
			mac2_7_4,
			mac2_7_5,
			mac2_7_6,
			mac2_8_1,
			mac2_8_2,
			mac2_8_3,
			mac2_8_4,
			mac2_8_5,
			mac2_8_6,
			mac2_9_1,
			mac2_9_2,
			mac2_9_3,
			mac2_9_4,
			mac2_9_5,
			mac2_9_6,
			mac2_10_1,
			mac2_10_2,
			mac2_10_3,
			mac2_10_4,
			mac2_10_5,
			mac2_10_6,
			mac2_11_1,
			mac2_11_2,
			mac2_11_3,
			mac2_11_4,
			mac2_11_5,
			mac2_11_6,
			mac2_12_1,
			mac2_12_2,
			mac2_12_3,
			mac2_12_4,
			mac2_12_5,
			mac2_12_6,
			mac2_13_1,
			mac2_13_2,
			mac2_13_3,
			mac2_13_4,
			mac2_13_5,
			mac2_13_6,
			mac2_14_1,
			mac2_14_2,
			mac2_14_3,
			mac2_14_4,
			mac2_14_5,
			mac2_14_6,
			mac2_15_1,
			mac2_15_2,
			mac2_15_3,
			mac2_15_4,
			mac2_15_5,
			mac2_15_6,
			mac2_16_1,
			mac2_16_2,
			mac2_16_3,
			mac2_16_4,
			mac2_16_5,
			mac2_16_6,
			mac3_1,
			mac3_2,
			mac3_3,
			mac3_4,
			mac3_5,
			mac3_6,
			mac3_7,
			mac3_8,
			mac3_9,
			mac3_10,
			mac3_11,
			mac3_12,
			mac3_13,
			mac3_14,
			mac3_15,
			mac3_16,
			mac3_17,
			mac3_18,
			mac3_19,
			mac3_20,
			mac3_21,
			mac3_22,
			mac3_23,
			mac3_24,
			mac3_25,
			mac3_26,
			mac3_27,
			mac3_28,
			mac3_29,
			mac3_30,
			mac3_31,
			mac3_32,
			mac3_33,
			mac3_34,
			mac3_35,
			mac3_36,
			mac3_37,
			mac3_38,
			mac3_39,
			mac3_40,
			mac3_41,
			mac3_42,
			mac3_43,
			mac3_44,
			mac3_45,
			mac3_46,
			mac3_47,
			mac3_48,
			mac3_49,
			mac3_50,
			mac3_51,
			mac3_52,
			mac3_53,
			mac3_54,
			mac3_55,
			mac3_56,
			mac3_57,
			mac3_58,
			mac3_59,
			mac3_60,
			mac3_61,
			mac3_62,
			mac3_63,
			mac3_64,
			mac3_65,
			mac3_66,
			mac3_67,
			mac3_68,
			mac3_69,
			mac3_70,
			mac3_71,
			mac3_72,
			mac3_73,
			mac3_74,
			mac3_75,
			mac3_76,
			mac3_77,
			mac3_78,
			mac3_79,
			mac3_80,
			mac3_81,
			mac3_82,
			mac3_83,
			mac3_84,
			mac3_85,
			mac3_86,
			mac3_87,
			mac3_88,
			mac3_89,
			mac3_90,
			mac3_91,
			mac3_92,
			mac3_93,
			mac3_94,
			mac3_95,
			mac3_96,
			mac3_97,
			mac3_98,
			mac3_99,
			mac3_100,
			mac3_101,
			mac3_102,
			mac3_103,
			mac3_104,
			mac3_105,
			mac3_106,
			mac3_107,
			mac3_108,
			mac3_109,
			mac3_110,
			mac3_111,
			mac3_112,
			mac3_113,
			mac3_114,
			mac3_115,
			mac3_116,
			mac3_117,
			mac3_118,
			mac3_119,
			mac3_120,
			mac4_1,
			mac4_2,
			mac4_3,
			mac4_4,
			mac4_5,
			mac4_6,
			mac4_7,
			mac4_8,
			mac4_9,
			mac4_10,
			mac4_11,
			mac4_12,
			mac4_13,
			mac4_14,
			mac4_15,
			mac4_16,
			mac4_17,
			mac4_18,
			mac4_19,
			mac4_20,
			mac4_21,
			mac4_22,
			mac4_23,
			mac4_24,
			mac4_25,
			mac4_26,
			mac4_27,
			mac4_28,
			mac4_29,
			mac4_30,
			mac4_31,
			mac4_32,
			mac4_33,
			mac4_34,
			mac4_35,
			mac4_36,
			mac4_37,
			mac4_38,
			mac4_39,
			mac4_40,
			mac4_41,
			mac4_42,
			mac4_43,
			mac4_44,
			mac4_45,
			mac4_46,
			mac4_47,
			mac4_48,
			mac4_49,
			mac4_50,
			mac4_51,
			mac4_52,
			mac4_53,
			mac4_54,
			mac4_55,
			mac4_56,
			mac4_57,
			mac4_58,
			mac4_59,
			mac4_60,
			mac4_61,
			mac4_62,
			mac4_63,
			mac4_64,
			mac4_65,
			mac4_66,
			mac4_67,
			mac4_68,
			mac4_69,
			mac4_70,
			mac4_71,
			mac4_72,
			mac4_73,
			mac4_74,
			mac4_75,
			mac4_76,
			mac4_77,
			mac4_78,
			mac4_79,
			mac4_80,
			mac4_81,
			mac4_82,
			mac4_83,
			mac4_84,
			mac5_1,
			mac5_2,
			mac5_3,
			mac5_4,
			mac5_5,
			mac5_6,
			mac5_7,
			mac5_8,
			mac5_9,
			mac5_10,
//input
			clk,
			f1_rdata,
			w1_1_rdata,
			w1_2_rdata,
			w1_3_rdata,
			w1_4_rdata,
			w1_5_rdata,
			w1_6_rdata,
			f3_1_rdata,
			f3_2_rdata,
			f3_3_rdata,
			f3_4_rdata,
			f3_5_rdata,
			f3_6_rdata,
			w3_1_1_rdata,
			w3_1_2_rdata,
			w3_1_3_rdata,
			w3_1_4_rdata,
			w3_1_5_rdata,
			w3_1_6_rdata,
			w3_2_1_rdata,
			w3_2_2_rdata,
			w3_2_3_rdata,
			w3_2_4_rdata,
			w3_2_5_rdata,
			w3_2_6_rdata,
			w3_3_1_rdata,
			w3_3_2_rdata,
			w3_3_3_rdata,
			w3_3_4_rdata,
			w3_3_5_rdata,
			w3_3_6_rdata,
			w3_4_1_rdata,
			w3_4_2_rdata,
			w3_4_3_rdata,
			w3_4_4_rdata,
			w3_4_5_rdata,
			w3_4_6_rdata,
			w3_5_1_rdata,
			w3_5_2_rdata,
			w3_5_3_rdata,
			w3_5_4_rdata,
			w3_5_5_rdata,
			w3_5_6_rdata,
			w3_6_1_rdata,
			w3_6_2_rdata,
			w3_6_3_rdata,
			w3_6_4_rdata,
			w3_6_5_rdata,
			w3_6_6_rdata,
			w3_7_1_rdata,
			w3_7_2_rdata,
			w3_7_3_rdata,
			w3_7_4_rdata,
			w3_7_5_rdata,
			w3_7_6_rdata,
			w3_8_1_rdata,
			w3_8_2_rdata,
			w3_8_3_rdata,
			w3_8_4_rdata,
			w3_8_5_rdata,
			w3_8_6_rdata,
			w3_9_1_rdata,
			w3_9_2_rdata,
			w3_9_3_rdata,
			w3_9_4_rdata,
			w3_9_5_rdata,
			w3_9_6_rdata,
			w3_10_1_rdata,
			w3_10_2_rdata,
			w3_10_3_rdata,
			w3_10_4_rdata,
			w3_10_5_rdata,
			w3_10_6_rdata,
			w3_11_1_rdata,
			w3_11_2_rdata,
			w3_11_3_rdata,
			w3_11_4_rdata,
			w3_11_5_rdata,
			w3_11_6_rdata,
			w3_12_1_rdata,
			w3_12_2_rdata,
			w3_12_3_rdata,
			w3_12_4_rdata,
			w3_12_5_rdata,
			w3_12_6_rdata,
			w3_13_1_rdata,
			w3_13_2_rdata,
			w3_13_3_rdata,
			w3_13_4_rdata,
			w3_13_5_rdata,
			w3_13_6_rdata,
			w3_14_1_rdata,
			w3_14_2_rdata,
			w3_14_3_rdata,
			w3_14_4_rdata,
			w3_14_5_rdata,
			w3_14_6_rdata,
			w3_15_1_rdata,
			w3_15_2_rdata,
			w3_15_3_rdata,
			w3_15_4_rdata,
			w3_15_5_rdata,
			w3_15_6_rdata,
			w3_16_1_rdata,
			w3_16_2_rdata,
			w3_16_3_rdata,
			w3_16_4_rdata,
			w3_16_5_rdata,
			w3_16_6_rdata,
			f5_rdata,
			w5_1_rdata,
			w5_2_rdata,
			w5_3_rdata,
			w5_4_rdata,
			w5_5_rdata,
			w5_6_rdata,
			w5_7_rdata,
			w5_8_rdata,
			w5_9_rdata,
			w5_10_rdata,
			w5_11_rdata,
			w5_12_rdata,
			w5_13_rdata,
			w5_14_rdata,
			w5_15_rdata,
			w5_16_rdata,
			w5_17_rdata,
			w5_18_rdata,
			w5_19_rdata,
			w5_20_rdata,
			w5_21_rdata,
			w5_22_rdata,
			w5_23_rdata,
			w5_24_rdata,
			w5_25_rdata,
			w5_26_rdata,
			w5_27_rdata,
			w5_28_rdata,
			w5_29_rdata,
			w5_30_rdata,
			w5_31_rdata,
			w5_32_rdata,
			w5_33_rdata,
			w5_34_rdata,
			w5_35_rdata,
			w5_36_rdata,
			w5_37_rdata,
			w5_38_rdata,
			w5_39_rdata,
			w5_40_rdata,
			w5_41_rdata,
			w5_42_rdata,
			w5_43_rdata,
			w5_44_rdata,
			w5_45_rdata,
			w5_46_rdata,
			w5_47_rdata,
			w5_48_rdata,
			w5_49_rdata,
			w5_50_rdata,
			w5_51_rdata,
			w5_52_rdata,
			w5_53_rdata,
			w5_54_rdata,
			w5_55_rdata,
			w5_56_rdata,
			w5_57_rdata,
			w5_58_rdata,
			w5_59_rdata,
			w5_60_rdata,
			w5_61_rdata,
			w5_62_rdata,
			w5_63_rdata,
			w5_64_rdata,
			w5_65_rdata,
			w5_66_rdata,
			w5_67_rdata,
			w5_68_rdata,
			w5_69_rdata,
			w5_70_rdata,
			w5_71_rdata,
			w5_72_rdata,
			w5_73_rdata,
			w5_74_rdata,
			w5_75_rdata,
			w5_76_rdata,
			w5_77_rdata,
			w5_78_rdata,
			w5_79_rdata,
			w5_80_rdata,
			w5_81_rdata,
			w5_82_rdata,
			w5_83_rdata,
			w5_84_rdata,
			w5_85_rdata,
			w5_86_rdata,
			w5_87_rdata,
			w5_88_rdata,
			w5_89_rdata,
			w5_90_rdata,
			w5_91_rdata,
			w5_92_rdata,
			w5_93_rdata,
			w5_94_rdata,
			w5_95_rdata,
			w5_96_rdata,
			w5_97_rdata,
			w5_98_rdata,
			w5_99_rdata,
			w5_100_rdata,
			w5_101_rdata,
			w5_102_rdata,
			w5_103_rdata,
			w5_104_rdata,
			w5_105_rdata,
			w5_106_rdata,
			w5_107_rdata,
			w5_108_rdata,
			w5_109_rdata,
			w5_110_rdata,
			w5_111_rdata,
			w5_112_rdata,
			w5_113_rdata,
			w5_114_rdata,
			w5_115_rdata,
			w5_116_rdata,
			w5_117_rdata,
			w5_118_rdata,
			w5_119_rdata,
			w5_120_rdata,
			f6_rdata,
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
			f7_rdata,
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
			sel,
			conv1_clr,
			conv2_clr,
			fc1_clr,
			fc2_clr,
			fc3_clr);

	input wire clk;

	//mac1 input
	input wire [7:0] 	f1_rdata;
	input wire [7:0] 	w1_1_rdata;
	input wire [7:0] 	w1_2_rdata;
	input wire [7:0] 	w1_3_rdata;
	input wire [7:0] 	w1_4_rdata;	
	input wire [7:0] 	w1_5_rdata;
	input wire [7:0] 	w1_6_rdata;

	//mac2 input
	input wire [15:0] 	f3_1_rdata;
	input wire [15:0] 	f3_2_rdata;
	input wire [15:0] 	f3_3_rdata;
	input wire [15:0] 	f3_4_rdata;	
	input wire [15:0] 	f3_5_rdata;
	input wire [15:0] 	f3_6_rdata;

	input wire [7:0] 	w3_1_1_rdata;
	input wire [7:0] 	w3_1_2_rdata;
	input wire [7:0] 	w3_1_3_rdata;
	input wire [7:0] 	w3_1_4_rdata;
	input wire [7:0] 	w3_1_5_rdata;
	input wire [7:0] 	w3_1_6_rdata;
	input wire [7:0] 	w3_2_1_rdata;
	input wire [7:0] 	w3_2_2_rdata;
	input wire [7:0] 	w3_2_3_rdata;
	input wire [7:0] 	w3_2_4_rdata;
	input wire [7:0] 	w3_2_5_rdata;
	input wire [7:0] 	w3_2_6_rdata;
	input wire [7:0] 	w3_3_1_rdata;
	input wire [7:0] 	w3_3_2_rdata;
	input wire [7:0] 	w3_3_3_rdata;
	input wire [7:0] 	w3_3_4_rdata;
	input wire [7:0] 	w3_3_5_rdata;
	input wire [7:0] 	w3_3_6_rdata;
	input wire [7:0] 	w3_4_1_rdata;	
	input wire [7:0] 	w3_4_2_rdata;	
	input wire [7:0] 	w3_4_3_rdata;	
	input wire [7:0] 	w3_4_4_rdata;	
	input wire [7:0] 	w3_4_5_rdata;	
	input wire [7:0] 	w3_4_6_rdata;	
	input wire [7:0] 	w3_5_1_rdata;
	input wire [7:0] 	w3_5_2_rdata;
	input wire [7:0] 	w3_5_3_rdata;
	input wire [7:0] 	w3_5_4_rdata;
	input wire [7:0] 	w3_5_5_rdata;
	input wire [7:0] 	w3_5_6_rdata;
	input wire [7:0] 	w3_6_1_rdata;
	input wire [7:0] 	w3_6_2_rdata;
	input wire [7:0] 	w3_6_3_rdata;
	input wire [7:0] 	w3_6_4_rdata;
	input wire [7:0] 	w3_6_5_rdata;
	input wire [7:0] 	w3_6_6_rdata;
	input wire [7:0] 	w3_7_1_rdata;
	input wire [7:0] 	w3_7_2_rdata;
	input wire [7:0] 	w3_7_3_rdata;
	input wire [7:0] 	w3_7_4_rdata;
	input wire [7:0] 	w3_7_5_rdata;
	input wire [7:0] 	w3_7_6_rdata;
	input wire [7:0] 	w3_8_1_rdata;
	input wire [7:0] 	w3_8_2_rdata;
	input wire [7:0] 	w3_8_3_rdata;
	input wire [7:0] 	w3_8_4_rdata;
	input wire [7:0] 	w3_8_5_rdata;
	input wire [7:0] 	w3_8_6_rdata;
	input wire [7:0] 	w3_9_1_rdata;
	input wire [7:0] 	w3_9_2_rdata;
	input wire [7:0] 	w3_9_3_rdata;
	input wire [7:0] 	w3_9_4_rdata;
	input wire [7:0] 	w3_9_5_rdata;
	input wire [7:0] 	w3_9_6_rdata;
	input wire [7:0] 	w3_10_1_rdata;	
	input wire [7:0] 	w3_10_2_rdata;	
	input wire [7:0] 	w3_10_3_rdata;	
	input wire [7:0] 	w3_10_4_rdata;	
	input wire [7:0] 	w3_10_5_rdata;	
	input wire [7:0] 	w3_10_6_rdata;	
	input wire [7:0] 	w3_11_1_rdata;
	input wire [7:0] 	w3_11_2_rdata;
	input wire [7:0] 	w3_11_3_rdata;
	input wire [7:0] 	w3_11_4_rdata;
	input wire [7:0] 	w3_11_5_rdata;
	input wire [7:0] 	w3_11_6_rdata;
	input wire [7:0] 	w3_12_1_rdata;
	input wire [7:0] 	w3_12_2_rdata;
	input wire [7:0] 	w3_12_3_rdata;
	input wire [7:0] 	w3_12_4_rdata;
	input wire [7:0] 	w3_12_5_rdata;
	input wire [7:0] 	w3_12_6_rdata;
	input wire [7:0] 	w3_13_1_rdata;
	input wire [7:0] 	w3_13_2_rdata;
	input wire [7:0] 	w3_13_3_rdata;
	input wire [7:0] 	w3_13_4_rdata;
	input wire [7:0] 	w3_13_5_rdata;
	input wire [7:0] 	w3_13_6_rdata;
	input wire [7:0] 	w3_14_1_rdata;
	input wire [7:0] 	w3_14_2_rdata;
	input wire [7:0] 	w3_14_3_rdata;
	input wire [7:0] 	w3_14_4_rdata;
	input wire [7:0] 	w3_14_5_rdata;
	input wire [7:0] 	w3_14_6_rdata;
	input wire [7:0] 	w3_15_1_rdata;
	input wire [7:0] 	w3_15_2_rdata;
	input wire [7:0] 	w3_15_3_rdata;
	input wire [7:0] 	w3_15_4_rdata;
	input wire [7:0] 	w3_15_5_rdata;
	input wire [7:0] 	w3_15_6_rdata;
	input wire [7:0] 	w3_16_1_rdata;
	input wire [7:0] 	w3_16_2_rdata;
	input wire [7:0] 	w3_16_3_rdata;
	input wire [7:0] 	w3_16_4_rdata;
	input wire [7:0] 	w3_16_5_rdata;
	input wire [7:0] 	w3_16_6_rdata;
							
	//mac3 input

	input wire [15:0]   f5_rdata;
	input wire [7:0]    w5_1_rdata;
	input wire [7:0]    w5_2_rdata;
	input wire [7:0]    w5_3_rdata;
	input wire [7:0]    w5_4_rdata;
	input wire [7:0]    w5_5_rdata;
	input wire [7:0]    w5_6_rdata;
	input wire [7:0]    w5_7_rdata;
	input wire [7:0]    w5_8_rdata;
	input wire [7:0]    w5_9_rdata;
	input wire [7:0]    w5_10_rdata;
	input wire [7:0]    w5_11_rdata;
	input wire [7:0]    w5_12_rdata;
	input wire [7:0]    w5_13_rdata;
	input wire [7:0]    w5_14_rdata;
	input wire [7:0]    w5_15_rdata;
	input wire [7:0]    w5_16_rdata;
	input wire [7:0]    w5_17_rdata;
	input wire [7:0]    w5_18_rdata;
	input wire [7:0]    w5_19_rdata;
	input wire [7:0]    w5_20_rdata;
	input wire [7:0]    w5_21_rdata;
	input wire [7:0]    w5_22_rdata;
	input wire [7:0]    w5_23_rdata;
	input wire [7:0]    w5_24_rdata;
	input wire [7:0]    w5_25_rdata;
	input wire [7:0]    w5_26_rdata;
	input wire [7:0]    w5_27_rdata;
	input wire [7:0]    w5_28_rdata;
	input wire [7:0]    w5_29_rdata;
	input wire [7:0]    w5_30_rdata;
	input wire [7:0]    w5_31_rdata;
	input wire [7:0]    w5_32_rdata;
	input wire [7:0]    w5_33_rdata;
	input wire [7:0]    w5_34_rdata;
	input wire [7:0]    w5_35_rdata;
	input wire [7:0]    w5_36_rdata;
	input wire [7:0]    w5_37_rdata;
	input wire [7:0]    w5_38_rdata;
	input wire [7:0]    w5_39_rdata;
	input wire [7:0]    w5_40_rdata;
	input wire [7:0]    w5_41_rdata;
	input wire [7:0]    w5_42_rdata;
	input wire [7:0]    w5_43_rdata;
	input wire [7:0]    w5_44_rdata;
	input wire [7:0]    w5_45_rdata;
	input wire [7:0]    w5_46_rdata;
	input wire [7:0]    w5_47_rdata;
	input wire [7:0]    w5_48_rdata;
	input wire [7:0]    w5_49_rdata;
	input wire [7:0]    w5_50_rdata;
	input wire [7:0]    w5_51_rdata;
	input wire [7:0]    w5_52_rdata;
	input wire [7:0]    w5_53_rdata;
	input wire [7:0]    w5_54_rdata;
	input wire [7:0]    w5_55_rdata;
	input wire [7:0]    w5_56_rdata;
	input wire [7:0]    w5_57_rdata;
	input wire [7:0]    w5_58_rdata;
	input wire [7:0]    w5_59_rdata;
	input wire [7:0]    w5_60_rdata;
	input wire [7:0]    w5_61_rdata;
	input wire [7:0]    w5_62_rdata;
	input wire [7:0]    w5_63_rdata;
	input wire [7:0]    w5_64_rdata;
	input wire [7:0]    w5_65_rdata;
	input wire [7:0]    w5_66_rdata;
	input wire [7:0]    w5_67_rdata;
	input wire [7:0]    w5_68_rdata;
	input wire [7:0]    w5_69_rdata;
	input wire [7:0]    w5_70_rdata;
	input wire [7:0]    w5_71_rdata;
	input wire [7:0]    w5_72_rdata;
	input wire [7:0]    w5_73_rdata;
	input wire [7:0]    w5_74_rdata;
	input wire [7:0]    w5_75_rdata;
	input wire [7:0]    w5_76_rdata;
	input wire [7:0]    w5_77_rdata;
	input wire [7:0]    w5_78_rdata;
	input wire [7:0]    w5_79_rdata;
	input wire [7:0]    w5_80_rdata;
	input wire [7:0]    w5_81_rdata;
	input wire [7:0]    w5_82_rdata;
	input wire [7:0]    w5_83_rdata;
	input wire [7:0]    w5_84_rdata;
	input wire [7:0]    w5_85_rdata;
	input wire [7:0]    w5_86_rdata;
	input wire [7:0]    w5_87_rdata;
	input wire [7:0]    w5_88_rdata;
	input wire [7:0]    w5_89_rdata;
	input wire [7:0]    w5_90_rdata;
	input wire [7:0]    w5_91_rdata;
	input wire [7:0]    w5_92_rdata;
	input wire [7:0]    w5_93_rdata;
	input wire [7:0]    w5_94_rdata;
	input wire [7:0]    w5_95_rdata;
	input wire [7:0]    w5_96_rdata;
	input wire [7:0]    w5_97_rdata;
	input wire [7:0]    w5_98_rdata;
	input wire [7:0]    w5_99_rdata;
	input wire [7:0]    w5_100_rdata;
	input wire [7:0]    w5_101_rdata;
	input wire [7:0]    w5_102_rdata;
	input wire [7:0]    w5_103_rdata;
	input wire [7:0]    w5_104_rdata;
	input wire [7:0]    w5_105_rdata;
	input wire [7:0]    w5_106_rdata;
	input wire [7:0]    w5_107_rdata;
	input wire [7:0]    w5_108_rdata;
	input wire [7:0]    w5_109_rdata;
	input wire [7:0]    w5_110_rdata;
	input wire [7:0]    w5_111_rdata;
	input wire [7:0]    w5_112_rdata;
	input wire [7:0]    w5_113_rdata;
	input wire [7:0]    w5_114_rdata;
	input wire [7:0]    w5_115_rdata;
	input wire [7:0]    w5_116_rdata;
	input wire [7:0]    w5_117_rdata;
	input wire [7:0]    w5_118_rdata;
	input wire [7:0]    w5_119_rdata;
	input wire [7:0]    w5_120_rdata;

//mac4 input
	input wire [15:0]f6_rdata;
	input wire [7:0] w6_1_rdata;
	input wire [7:0] w6_2_rdata;
	input wire [7:0] w6_3_rdata;
	input wire [7:0] w6_4_rdata;
	input wire [7:0] w6_5_rdata;
	input wire [7:0] w6_6_rdata;
	input wire [7:0] w6_7_rdata;
	input wire [7:0] w6_8_rdata;
	input wire [7:0] w6_9_rdata;
	input wire [7:0] w6_10_rdata;
	input wire [7:0] w6_11_rdata;
	input wire [7:0] w6_12_rdata;
	input wire [7:0] w6_13_rdata;
	input wire [7:0] w6_14_rdata;
	input wire [7:0] w6_15_rdata;
	input wire [7:0] w6_16_rdata;
	input wire [7:0] w6_17_rdata;
	input wire [7:0] w6_18_rdata;
	input wire [7:0] w6_19_rdata;
	input wire [7:0] w6_20_rdata;
	input wire [7:0] w6_21_rdata;
	input wire [7:0] w6_22_rdata;
	input wire [7:0] w6_23_rdata;
	input wire [7:0] w6_24_rdata;
	input wire [7:0] w6_25_rdata;
	input wire [7:0] w6_26_rdata;
	input wire [7:0] w6_27_rdata;
	input wire [7:0] w6_28_rdata;
	input wire [7:0] w6_29_rdata;
	input wire [7:0] w6_30_rdata;
	input wire [7:0] w6_31_rdata;
	input wire [7:0] w6_32_rdata;
	input wire [7:0] w6_33_rdata;
	input wire [7:0] w6_34_rdata;
	input wire [7:0] w6_35_rdata;
	input wire [7:0] w6_36_rdata;
	input wire [7:0] w6_37_rdata;
	input wire [7:0] w6_38_rdata;
	input wire [7:0] w6_39_rdata;
	input wire [7:0] w6_40_rdata;
	input wire [7:0] w6_41_rdata;
	input wire [7:0] w6_42_rdata;
	input wire [7:0] w6_43_rdata;
	input wire [7:0] w6_44_rdata;
	input wire [7:0] w6_45_rdata;
	input wire [7:0] w6_46_rdata;
	input wire [7:0] w6_47_rdata;
	input wire [7:0] w6_48_rdata;
	input wire [7:0] w6_49_rdata;
	input wire [7:0] w6_50_rdata;
	input wire [7:0] w6_51_rdata;
	input wire [7:0] w6_52_rdata;
	input wire [7:0] w6_53_rdata;
	input wire [7:0] w6_54_rdata;
	input wire [7:0] w6_55_rdata;
	input wire [7:0] w6_56_rdata;
	input wire [7:0] w6_57_rdata;
	input wire [7:0] w6_58_rdata;
	input wire [7:0] w6_59_rdata;
	input wire [7:0] w6_60_rdata;
	input wire [7:0] w6_61_rdata;
	input wire [7:0] w6_62_rdata;
	input wire [7:0] w6_63_rdata;
	input wire [7:0] w6_64_rdata;
	input wire [7:0] w6_65_rdata;
	input wire [7:0] w6_66_rdata;
	input wire [7:0] w6_67_rdata;
	input wire [7:0] w6_68_rdata;
	input wire [7:0] w6_69_rdata;
	input wire [7:0] w6_70_rdata;
	input wire [7:0] w6_71_rdata;
	input wire [7:0] w6_72_rdata;
	input wire [7:0] w6_73_rdata;
	input wire [7:0] w6_74_rdata;
	input wire [7:0] w6_75_rdata;
	input wire [7:0] w6_76_rdata;
	input wire [7:0] w6_77_rdata;
	input wire [7:0] w6_78_rdata;
	input wire [7:0] w6_79_rdata;
	input wire [7:0] w6_80_rdata;
	input wire [7:0] w6_81_rdata;
	input wire [7:0] w6_82_rdata;
	input wire [7:0] w6_83_rdata;
	input wire [7:0] w6_84_rdata;
	
//mac5 input
	input wire [15:0]f7_rdata;
	input wire [7:0] w7_1_rdata;
	input wire [7:0] w7_2_rdata;
	input wire [7:0] w7_3_rdata;
	input wire [7:0] w7_4_rdata;
	input wire [7:0] w7_5_rdata;
	input wire [7:0] w7_6_rdata;
	input wire [7:0] w7_7_rdata;
	input wire [7:0] w7_8_rdata;
	input wire [7:0] w7_9_rdata;
	input wire [7:0] w7_10_rdata;

//mac1 output
	output wire  [22:0] mac1_1;
	output wire  [22:0] mac1_2;
	output wire  [22:0] mac1_3;
	output wire  [22:0] mac1_4;
	output wire  [22:0] mac1_5;
	output wire  [22:0] mac1_6;

//mac2 output
	output wire [22:0] mac2_1_1;
	output wire [22:0] mac2_1_2;
	output wire [22:0] mac2_1_3;
	output wire [22:0] mac2_1_4;
	output wire [22:0] mac2_1_5;
	output wire [22:0] mac2_1_6;

	output wire [22:0] mac2_2_1;
	output wire [22:0] mac2_2_2;
	output wire [22:0] mac2_2_3;
	output wire [22:0] mac2_2_4;
	output wire [22:0] mac2_2_5;
	output wire [22:0] mac2_2_6;

	output wire [22:0] mac2_3_1;
	output wire [22:0] mac2_3_2;
	output wire [22:0] mac2_3_3;
	output wire [22:0] mac2_3_4;
	output wire [22:0] mac2_3_5;
	output wire [22:0] mac2_3_6;

	output wire [22:0] mac2_4_1;
	output wire [22:0] mac2_4_2;
	output wire [22:0] mac2_4_3;
	output wire [22:0] mac2_4_4;
	output wire [22:0] mac2_4_5;
	output wire [22:0] mac2_4_6;

	output wire [22:0] mac2_5_1;
	output wire [22:0] mac2_5_2;
	output wire [22:0] mac2_5_3;
	output wire [22:0] mac2_5_4;
	output wire [22:0] mac2_5_5;
	output wire [22:0] mac2_5_6;

	output wire [22:0] mac2_6_1;
	output wire [22:0] mac2_6_2;
	output wire [22:0] mac2_6_3;
	output wire [22:0] mac2_6_4;
	output wire [22:0] mac2_6_5;
	output wire [22:0] mac2_6_6;

	output wire [22:0] mac2_7_1;
	output wire [22:0] mac2_7_2;
	output wire [22:0] mac2_7_3;
	output wire [22:0] mac2_7_4;
	output wire [22:0] mac2_7_5;
	output wire [22:0] mac2_7_6;

	output wire [22:0] mac2_8_1;
	output wire [22:0] mac2_8_2;
	output wire [22:0] mac2_8_3;
	output wire [22:0] mac2_8_4;
	output wire [22:0] mac2_8_5;
	output wire [22:0] mac2_8_6;

	output wire [22:0] mac2_9_1;
	output wire [22:0] mac2_9_2;
	output wire [22:0] mac2_9_3;
	output wire [22:0] mac2_9_4;
	output wire [22:0] mac2_9_5;
	output wire [22:0] mac2_9_6;

	output wire [22:0] mac2_10_1;
	output wire [22:0] mac2_10_2;
	output wire [22:0] mac2_10_3;
	output wire [22:0] mac2_10_4;
	output wire [22:0] mac2_10_5;
	output wire [22:0] mac2_10_6;

	output wire [22:0] mac2_11_1;
	output wire [22:0] mac2_11_2;
	output wire [22:0] mac2_11_3;
	output wire [22:0] mac2_11_4;
	output wire [22:0] mac2_11_5;
	output wire [22:0] mac2_11_6;

	output wire [22:0] mac2_12_1;
	output wire [22:0] mac2_12_2;
	output wire [22:0] mac2_12_3;
	output wire [22:0] mac2_12_4;
	output wire [22:0] mac2_12_5;
	output wire [22:0] mac2_12_6;

	output wire [22:0] mac2_13_1;
	output wire [22:0] mac2_13_2;
	output wire [22:0] mac2_13_3;
	output wire [22:0] mac2_13_4;
	output wire [22:0] mac2_13_5;
	output wire [22:0] mac2_13_6;

	output wire [22:0] mac2_14_1;
	output wire [22:0] mac2_14_2;
	output wire [22:0] mac2_14_3;
	output wire [22:0] mac2_14_4;
	output wire [22:0] mac2_14_5;
	output wire [22:0] mac2_14_6;

	output wire [22:0] mac2_15_1;
	output wire [22:0] mac2_15_2;
	output wire [22:0] mac2_15_3;
	output wire [22:0] mac2_15_4;
	output wire [22:0] mac2_15_5;
	output wire [22:0] mac2_15_6;

	output wire [22:0] mac2_16_1;
	output wire [22:0] mac2_16_2;
	output wire [22:0] mac2_16_3;
	output wire [22:0] mac2_16_4;
	output wire [22:0] mac2_16_5;
	output wire [22:0] mac2_16_6;

//mac3 output
	output wire [22:0] mac3_1;
	output wire [22:0] mac3_2;
	output wire [22:0] mac3_3;
	output wire [22:0] mac3_4;
	output wire [22:0] mac3_5;
	output wire [22:0] mac3_6;
	output wire [22:0] mac3_7;
	output wire [22:0] mac3_8;
	output wire [22:0] mac3_9;
	output wire [22:0] mac3_10;
	output wire [22:0] mac3_11;
	output wire [22:0] mac3_12;
	output wire [22:0] mac3_13;
	output wire [22:0] mac3_14;
	output wire [22:0] mac3_15;
	output wire [22:0] mac3_16;
	output wire [22:0] mac3_17;
	output wire [22:0] mac3_18;
	output wire [22:0] mac3_19;
	output wire [22:0] mac3_20;
	output wire [22:0] mac3_21;
	output wire [22:0] mac3_22;
	output wire [22:0] mac3_23;
	output wire [22:0] mac3_24;
	output wire [22:0] mac3_25;
	output wire [22:0] mac3_26;
	output wire [22:0] mac3_27;
	output wire [22:0] mac3_28;
	output wire [22:0] mac3_29;
	output wire [22:0] mac3_30;
	output wire [22:0] mac3_31;
	output wire [22:0] mac3_32;
	output wire [22:0] mac3_33;
	output wire [22:0] mac3_34;
	output wire [22:0] mac3_35;
	output wire [22:0] mac3_36;
	output wire [22:0] mac3_37;
	output wire [22:0] mac3_38;
	output wire [22:0] mac3_39;
	output wire [22:0] mac3_40;
	output wire [22:0] mac3_41;
	output wire [22:0] mac3_42;
	output wire [22:0] mac3_43;
	output wire [22:0] mac3_44;
	output wire [22:0] mac3_45;
	output wire [22:0] mac3_46;
	output wire [22:0] mac3_47;
	output wire [22:0] mac3_48;
	output wire [22:0] mac3_49;
	output wire [22:0] mac3_50;
	output wire [22:0] mac3_51;
	output wire [22:0] mac3_52;
	output wire [22:0] mac3_53;
	output wire [22:0] mac3_54;
	output wire [22:0] mac3_55;
	output wire [22:0] mac3_56;
	output wire [22:0] mac3_57;
	output wire [22:0] mac3_58;
	output wire [22:0] mac3_59;
	output wire [22:0] mac3_60;
	output wire [22:0] mac3_61;
	output wire [22:0] mac3_62;
	output wire [22:0] mac3_63;
	output wire [22:0] mac3_64;
	output wire [22:0] mac3_65;
	output wire [22:0] mac3_66;
	output wire [22:0] mac3_67;
	output wire [22:0] mac3_68;
	output wire [22:0] mac3_69;
	output wire [22:0] mac3_70;
	output wire [22:0] mac3_71;
	output wire [22:0] mac3_72;
	output wire [22:0] mac3_73;
	output wire [22:0] mac3_74;
	output wire [22:0] mac3_75;
	output wire [22:0] mac3_76;
	output wire [22:0] mac3_77;
	output wire [22:0] mac3_78;
	output wire [22:0] mac3_79;
	output wire [22:0] mac3_80;
	output wire [22:0] mac3_81;
	output wire [22:0] mac3_82;
	output wire [22:0] mac3_83;
	output wire [22:0] mac3_84;
	output wire [22:0] mac3_85;
	output wire [22:0] mac3_86;
	output wire [22:0] mac3_87;
	output wire [22:0] mac3_88;
	output wire [22:0] mac3_89;
	output wire [22:0] mac3_90;
	output wire [22:0] mac3_91;
	output wire [22:0] mac3_92;
	output wire [22:0] mac3_93;
	output wire [22:0] mac3_94;
	output wire [22:0] mac3_95;
	output wire [22:0] mac3_96;
	output wire [22:0] mac3_97;
	output wire [22:0] mac3_98;
	output wire [22:0] mac3_99;
	output wire [22:0] mac3_100;
	output wire [22:0] mac3_101;
	output wire [22:0] mac3_102;
	output wire [22:0] mac3_103;
	output wire [22:0] mac3_104;
	output wire [22:0] mac3_105;
	output wire [22:0] mac3_106;
	output wire [22:0] mac3_107;
	output wire [22:0] mac3_108;
	output wire [22:0] mac3_109;
	output wire [22:0] mac3_110;
	output wire [22:0] mac3_111;
	output wire [22:0] mac3_112;
	output wire [22:0] mac3_113;
	output wire [22:0] mac3_114;
	output wire [22:0] mac3_115;
	output wire [22:0] mac3_116;
	output wire [22:0] mac3_117;
	output wire [22:0] mac3_118;
	output wire [22:0] mac3_119;
	output wire [22:0] mac3_120;
//output mac4
	output wire [22:0] mac4_1;
	output wire [22:0] mac4_2;
	output wire [22:0] mac4_3;
	output wire [22:0] mac4_4;
	output wire [22:0] mac4_5;
	output wire [22:0] mac4_6;
	output wire [22:0] mac4_7;
	output wire [22:0] mac4_8;
	output wire [22:0] mac4_9;
	output wire [22:0] mac4_10;
	output wire [22:0] mac4_11;
	output wire [22:0] mac4_12;
	output wire [22:0] mac4_13;
	output wire [22:0] mac4_14;
	output wire [22:0] mac4_15;
	output wire [22:0] mac4_16;
	output wire [22:0] mac4_17;
	output wire [22:0] mac4_18;
	output wire [22:0] mac4_19;
	output wire [22:0] mac4_20;
	output wire [22:0] mac4_21;
	output wire [22:0] mac4_22;
	output wire [22:0] mac4_23;
	output wire [22:0] mac4_24;
	output wire [22:0] mac4_25;
	output wire [22:0] mac4_26;
	output wire [22:0] mac4_27;
	output wire [22:0] mac4_28;
	output wire [22:0] mac4_29;
	output wire [22:0] mac4_30;
	output wire [22:0] mac4_31;
	output wire [22:0] mac4_32;
	output wire [22:0] mac4_33;
	output wire [22:0] mac4_34;
	output wire [22:0] mac4_35;
	output wire [22:0] mac4_36;
	output wire [22:0] mac4_37;
	output wire [22:0] mac4_38;
	output wire [22:0] mac4_39;
	output wire [22:0] mac4_40;
	output wire [22:0] mac4_41;
	output wire [22:0] mac4_42;
	output wire [22:0] mac4_43;
	output wire [22:0] mac4_44;
	output wire [22:0] mac4_45;
	output wire [22:0] mac4_46;
	output wire [22:0] mac4_47;
	output wire [22:0] mac4_48;
	output wire [22:0] mac4_49;
	output wire [22:0] mac4_50;
	output wire [22:0] mac4_51;
	output wire [22:0] mac4_52;
	output wire [22:0] mac4_53;
	output wire [22:0] mac4_54;
	output wire [22:0] mac4_55;
	output wire [22:0] mac4_56;
	output wire [22:0] mac4_57;
	output wire [22:0] mac4_58;
	output wire [22:0] mac4_59;
	output wire [22:0] mac4_60;
	output wire [22:0] mac4_61;
	output wire [22:0] mac4_62;
	output wire [22:0] mac4_63;
	output wire [22:0] mac4_64;
	output wire [22:0] mac4_65;
	output wire [22:0] mac4_66;
	output wire [22:0] mac4_67;
	output wire [22:0] mac4_68;
	output wire [22:0] mac4_69;
	output wire [22:0] mac4_70;
	output wire [22:0] mac4_71;
	output wire [22:0] mac4_72;
	output wire [22:0] mac4_73;
	output wire [22:0] mac4_74;
	output wire [22:0] mac4_75;
	output wire [22:0] mac4_76;
	output wire [22:0] mac4_77;
	output wire [22:0] mac4_78;
	output wire [22:0] mac4_79;
	output wire [22:0] mac4_80;
	output wire [22:0] mac4_81;
	output wire [22:0] mac4_82;
	output wire [22:0] mac4_83;
	output wire [22:0] mac4_84;

//output mac5
	output wire [22:0] mac5_1;
	output wire [22:0] mac5_2;
	output wire [22:0] mac5_3;
	output wire [22:0] mac5_4;
	output wire [22:0] mac5_5;
	output wire [22:0] mac5_6;
	output wire [22:0] mac5_7;
	output wire [22:0] mac5_8;
	output wire [22:0] mac5_9;
	output wire [22:0] mac5_10;

	input wire  sel;
	input wire  conv1_clr;
	input wire  conv2_clr;
	input wire  fc1_clr;
	input wire 	fc2_clr;
	input wire 	fc3_clr;



wire [15:0] A[214:1];
wire [7:0] B[214:1];
wire [22:0] P[214:1];
wire	    SEL[214:1];



generate
	genvar i,j,k,l,m,n;
	for(i=1;i<215;i=i+1) begin:mac_gen

	MAC mac (
  		.CLK(clk),      // input wire CLK
  		.A(A[i]),          // input wire [15 : 0] A
 		.B(B[i]),          // input wire [7 : 0] B
  		.P(P[i]),          // output wire [47 : 0] P
  		.SEL(SEL[i])  // input wire SCLRP
	);
	end
	for(j=1;j<97;j=j+1) begin:sel1
	assign SEL[j] = sel? conv2_clr:fc1_clr; 
	end
	for(k=97;k<103;k=k+1) begin:sel2
	assign SEL[k] = sel? conv1_clr:fc1_clr;
	end
	for(l=103;l<121;l=l+1) begin:sel3
	assign SEL[l] = fc1_clr;
	end
	for(m=121;m<205;m=m+1) begin:sel4
	assign SEL[m] = fc2_clr;
	end
	for(n=205;n<215;n=n+1) begin:sel5
	assign SEL[n] = fc3_clr;
	end
	
endgenerate



//--------------------------------------
//--------MAC reuse MUX-----------------
//--------------------------------------
assign A[1]   =  sel?  f3_1_rdata : f5_rdata;
assign A[2]   =  sel?  f3_2_rdata : f5_rdata;
assign A[3]   =  sel?  f3_3_rdata : f5_rdata;
assign A[4]   =  sel?  f3_4_rdata : f5_rdata;
assign A[5]   =  sel?  f3_5_rdata : f5_rdata;
assign A[6]   =  sel?  f3_6_rdata : f5_rdata;

assign A[7]   =  sel?  f3_1_rdata : f5_rdata;
assign A[8]   =  sel?  f3_2_rdata : f5_rdata;
assign A[9]   =  sel?  f3_3_rdata : f5_rdata;
assign A[10]   =  sel?  f3_4_rdata : f5_rdata;
assign A[11]   =  sel?  f3_5_rdata : f5_rdata;
assign A[12]   =  sel?  f3_6_rdata : f5_rdata;

assign A[13]   =  sel?  f3_1_rdata : f5_rdata;
assign A[14]   =  sel?  f3_2_rdata : f5_rdata;
assign A[15]   =  sel?  f3_3_rdata : f5_rdata;
assign A[16]   =  sel?  f3_4_rdata : f5_rdata;
assign A[17]   =  sel?  f3_5_rdata : f5_rdata;
assign A[18]   =  sel?  f3_6_rdata : f5_rdata;

assign A[19]   =  sel?  f3_1_rdata : f5_rdata;
assign A[20]   =  sel?  f3_2_rdata : f5_rdata;
assign A[21]   =  sel?  f3_3_rdata : f5_rdata;
assign A[22]   =  sel?  f3_4_rdata : f5_rdata;
assign A[23]   =  sel?  f3_5_rdata : f5_rdata;
assign A[24]   =  sel?  f3_6_rdata : f5_rdata;

assign A[25]   =  sel?  f3_1_rdata : f5_rdata;
assign A[26]   =  sel?  f3_2_rdata : f5_rdata;
assign A[27]   =  sel?  f3_3_rdata : f5_rdata;
assign A[28]   =  sel?  f3_4_rdata : f5_rdata;
assign A[29]   =  sel?  f3_5_rdata : f5_rdata;
assign A[30]   =  sel?  f3_6_rdata :  f5_rdata;

assign A[31]   =  sel?  f3_1_rdata :  f5_rdata;
assign A[32]   =  sel?  f3_2_rdata : f5_rdata;
assign A[33]   =  sel?  f3_3_rdata : f5_rdata;
assign A[34]   =  sel?  f3_4_rdata : f5_rdata;
assign A[35]   =  sel?  f3_5_rdata : f5_rdata;
assign A[36]   =  sel?  f3_6_rdata : f5_rdata;

assign A[37]   =  sel?  f3_1_rdata : f5_rdata;
assign A[38]   =  sel?  f3_2_rdata : f5_rdata;
assign A[39]   =  sel?  f3_3_rdata : f5_rdata;
assign A[40]   =  sel?  f3_4_rdata : f5_rdata;
assign A[41]   =  sel?  f3_5_rdata : f5_rdata;
assign A[42]   =  sel?  f3_6_rdata : f5_rdata;

assign A[43]   =  sel?  f3_1_rdata : f5_rdata;
assign A[44]   =  sel?  f3_2_rdata : f5_rdata;
assign A[45]   =  sel?  f3_3_rdata : f5_rdata;
assign A[46]   =  sel?  f3_4_rdata : f5_rdata;
assign A[47]   =  sel?  f3_5_rdata : f5_rdata;
assign A[48]   =  sel?  f3_6_rdata : f5_rdata;

assign A[49]   =  sel?  f3_1_rdata : f5_rdata;
assign A[50]   =  sel?  f3_2_rdata : f5_rdata;
assign A[51]   =  sel?  f3_3_rdata : f5_rdata;
assign A[52]   =  sel?  f3_4_rdata : f5_rdata;
assign A[53]   =  sel?  f3_5_rdata : f5_rdata;
assign A[54]   =  sel?  f3_6_rdata : f5_rdata;

assign A[55]   =  sel?  f3_1_rdata : f5_rdata;
assign A[56]   =  sel?  f3_2_rdata : f5_rdata;
assign A[57]   =  sel?  f3_3_rdata : f5_rdata;
assign A[58]   =  sel?  f3_4_rdata : f5_rdata;
assign A[59]   =  sel?  f3_5_rdata : f5_rdata;
assign A[60]   =  sel?  f3_6_rdata : f5_rdata;

assign A[61]   =  sel?  f3_1_rdata : f5_rdata;
assign A[62]   =  sel?  f3_2_rdata : f5_rdata;
assign A[63]   =  sel?  f3_3_rdata : f5_rdata;
assign A[64]   =  sel?  f3_4_rdata : f5_rdata;
assign A[65]   =  sel?  f3_5_rdata : f5_rdata;
assign A[66]   =  sel?  f3_6_rdata : f5_rdata;

assign A[67]   =  sel?  f3_1_rdata : f5_rdata;
assign A[68]   =  sel?  f3_2_rdata : f5_rdata;
assign A[69]   =  sel?  f3_3_rdata : f5_rdata;
assign A[70]   =  sel?  f3_4_rdata : f5_rdata;
assign A[71]   =  sel?  f3_5_rdata : f5_rdata;
assign A[72]   =  sel?  f3_6_rdata : f5_rdata;

assign A[73]   =  sel?  f3_1_rdata : f5_rdata;
assign A[74]   =  sel?  f3_2_rdata : f5_rdata;
assign A[75]   =  sel?  f3_3_rdata : f5_rdata;
assign A[76]   =  sel?  f3_4_rdata : f5_rdata;
assign A[77]   =  sel?  f3_5_rdata : f5_rdata;
assign A[78]   =  sel?  f3_6_rdata : f5_rdata;

assign A[79]   =  sel?  f3_1_rdata : f5_rdata;
assign A[80]   =  sel?  f3_2_rdata : f5_rdata;
assign A[81]   =  sel?  f3_3_rdata : f5_rdata;
assign A[82]   =  sel?  f3_4_rdata : f5_rdata;
assign A[83]   =  sel?  f3_5_rdata : f5_rdata;
assign A[84]   =  sel?  f3_6_rdata : f5_rdata;

assign A[85]   =  sel?  f3_1_rdata : f5_rdata;
assign A[86]   =  sel?  f3_2_rdata : f5_rdata;
assign A[87]   =  sel?  f3_3_rdata : f5_rdata;
assign A[88]   =  sel?  f3_4_rdata : f5_rdata;
assign A[89]   =  sel?  f3_5_rdata : f5_rdata;
assign A[90]   =  sel?  f3_6_rdata : f5_rdata;

assign A[91]   =  sel?  f3_1_rdata : f5_rdata;
assign A[92]   =  sel?  f3_2_rdata : f5_rdata;
assign A[93]   =  sel?  f3_3_rdata : f5_rdata;
assign A[94]   =  sel?  f3_4_rdata : f5_rdata;
assign A[95]   =  sel?  f3_5_rdata : f5_rdata;
assign A[96]   =  sel?  f3_6_rdata : f5_rdata;


assign A[97]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
assign A[98]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
assign A[99]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
assign A[100]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
assign A[101]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
assign A[102]   =  sel?  {{8{f1_rdata[7]}},f1_rdata[7:0]} :f5_rdata;
 
assign A[103]   =  f5_rdata;
assign A[104]   =  f5_rdata;
assign A[105]   =  f5_rdata;
assign A[106]   =  f5_rdata;
assign A[107]   =  f5_rdata;
assign A[108]   =  f5_rdata;
assign A[109]   =  f5_rdata;
assign A[110]   =  f5_rdata;
assign A[111]   =  f5_rdata;
assign A[112]   =  f5_rdata;
assign A[113]   =  f5_rdata;
assign A[114]   =  f5_rdata;
assign A[115]   =  f5_rdata;
assign A[116]   =  f5_rdata;
assign A[117]   =  f5_rdata;
assign A[118]   =  f5_rdata;
assign A[119]   =  f5_rdata;
assign A[120]   =  f5_rdata;

assign A[121]   =  f6_rdata;
assign A[122]   =  f6_rdata;
assign A[123]   =  f6_rdata;
assign A[124]   =  f6_rdata;
assign A[125]   =  f6_rdata;
assign A[126]   =  f6_rdata;
assign A[127]   =  f6_rdata;
assign A[128]   =  f6_rdata;
assign A[129]   =  f6_rdata;
assign A[130]   =  f6_rdata;
assign A[131]   =  f6_rdata;
assign A[132]   =  f6_rdata;
assign A[133]   =  f6_rdata;
assign A[134]   =  f6_rdata;
assign A[135]   =  f6_rdata;
assign A[136]   =  f6_rdata;
assign A[137]   =  f6_rdata;
assign A[138]   =  f6_rdata;
assign A[139]   =  f6_rdata;
assign A[140]   =  f6_rdata;
assign A[141]   =  f6_rdata;
assign A[142]   =  f6_rdata;
assign A[143]   =  f6_rdata;
assign A[144]   =  f6_rdata;
assign A[145]   =  f6_rdata;
assign A[146]   =  f6_rdata;
assign A[147]   =  f6_rdata;
assign A[148]   =  f6_rdata;
assign A[149]   =  f6_rdata;
assign A[150]   =  f6_rdata;
assign A[151]   =  f6_rdata;
assign A[152]   =  f6_rdata;
assign A[153]   =  f6_rdata;
assign A[154]   =  f6_rdata;
assign A[155]   =  f6_rdata;
assign A[156]   =  f6_rdata;
assign A[157]   =  f6_rdata;
assign A[158]   =  f6_rdata;
assign A[159]   =  f6_rdata;
assign A[160]   =  f6_rdata;
assign A[161]   =  f6_rdata;
assign A[162]   =  f6_rdata;
assign A[163]   =  f6_rdata;
assign A[164]   =  f6_rdata;
assign A[165]   =  f6_rdata;
assign A[166]   =  f6_rdata;
assign A[167]   =  f6_rdata;
assign A[168]   =  f6_rdata;
assign A[169]   =  f6_rdata;
assign A[170]   =  f6_rdata;
assign A[171]   =  f6_rdata;
assign A[172]   =  f6_rdata;
assign A[173]   =  f6_rdata;
assign A[174]   =  f6_rdata;
assign A[175]   =  f6_rdata;
assign A[176]   =  f6_rdata;
assign A[177]   =  f6_rdata;
assign A[178]   =  f6_rdata;
assign A[179]   =  f6_rdata;
assign A[180]   =  f6_rdata;
assign A[181]   =  f6_rdata;
assign A[182]   =  f6_rdata;
assign A[183]   =  f6_rdata;
assign A[184]   =  f6_rdata;
assign A[185]   =  f6_rdata;
assign A[186]   =  f6_rdata;
assign A[187]   =  f6_rdata;
assign A[188]   =  f6_rdata;
assign A[189]   =  f6_rdata;
assign A[190]   =  f6_rdata;
assign A[191]   =  f6_rdata;
assign A[192]   =  f6_rdata;
assign A[193]   =  f6_rdata;
assign A[194]   =  f6_rdata;
assign A[195]   =  f6_rdata;
assign A[196]   =  f6_rdata;
assign A[197]   =  f6_rdata;
assign A[198]   =  f6_rdata;
assign A[199]   =  f6_rdata;
assign A[200]   =  f6_rdata;
assign A[201]   =  f6_rdata;
assign A[202]   =  f6_rdata;
assign A[203]   =  f6_rdata;
assign A[204]   =  f6_rdata;

assign A[205]   =  f7_rdata;
assign A[206]   =  f7_rdata;
assign A[207]   =  f7_rdata;
assign A[208]   =  f7_rdata;
assign A[209]   =  f7_rdata;
assign A[210]   =  f7_rdata;
assign A[211]   =  f7_rdata;
assign A[212]   =  f7_rdata;
assign A[213]   =  f7_rdata;
assign A[214]   =  f7_rdata;


assign B[1]   =  sel?  {w3_1_1_rdata[7:0]} : {w5_1_rdata[7:0]};
assign B[2]   =  sel?  {w3_1_2_rdata[7:0]} : {w5_2_rdata[7:0]};
assign B[3]   =  sel?  {w3_1_3_rdata[7:0]} : {w5_3_rdata[7:0]};
assign B[4]   =  sel?  {w3_1_4_rdata[7:0]} : {w5_4_rdata[7:0]};
assign B[5]   =  sel?  {w3_1_5_rdata[7:0]} : {w5_5_rdata[7:0]};
assign B[6]   =  sel?  {w3_1_6_rdata[7:0]} : {w5_6_rdata[7:0]};

assign B[7]   =  sel?  {w3_2_1_rdata[7:0]} : {w5_7_rdata[7:0]};
assign B[8]   =  sel?  {w3_2_2_rdata[7:0]} : {w5_8_rdata[7:0]};
assign B[9]   =  sel?  {w3_2_3_rdata[7:0]} : {w5_9_rdata[7:0]};
assign B[10]   =  sel?  {w3_2_4_rdata[7:0]} :{w5_10_rdata[7:0]};
assign B[11]   =  sel?  {w3_2_5_rdata[7:0]} :{w5_11_rdata[7:0]};
assign B[12]   =  sel?  {w3_2_6_rdata[7:0]} : {w5_12_rdata[7:0]};

assign B[13]   =  sel?  {w3_3_1_rdata[7:0]} : {w5_13_rdata[7:0]};
assign B[14]   =  sel?  {w3_3_2_rdata[7:0]} : {w5_14_rdata[7:0]};
assign B[15]   =  sel?  {w3_3_3_rdata[7:0]} : {w5_15_rdata[7:0]};
assign B[16]   =  sel?  {w3_3_4_rdata[7:0]} : {w5_16_rdata[7:0]};
assign B[17]   =  sel?  {w3_3_5_rdata[7:0]} : {w5_17_rdata[7:0]};
assign B[18]   =  sel?  {w3_3_6_rdata[7:0]} : {w5_18_rdata[7:0]};

assign B[19]   =  sel?  {w3_4_1_rdata[7:0]} : {w5_19_rdata[7:0]};
assign B[20]   =  sel?  {w3_4_2_rdata[7:0]} : {w5_20_rdata[7:0]};
assign B[21]   =  sel?  {w3_4_3_rdata[7:0]} : {w5_21_rdata[7:0]};
assign B[22]   =  sel?  {w3_4_4_rdata[7:0]} : {w5_22_rdata[7:0]};
assign B[23]   =  sel?  {w3_4_5_rdata[7:0]} : {w5_23_rdata[7:0]};
assign B[24]   =  sel?  {w3_4_6_rdata[7:0]} : {w5_24_rdata[7:0]};

assign B[25]   =  sel?  {w3_5_1_rdata[7:0]} : {w5_25_rdata[7:0]};
assign B[26]   =  sel?  {w3_5_2_rdata[7:0]} : {w5_26_rdata[7:0]};
assign B[27]   =  sel?  {w3_5_3_rdata[7:0]} : {w5_27_rdata[7:0]};
assign B[28]   =  sel?  {w3_5_4_rdata[7:0]} : {w5_28_rdata[7:0]};
assign B[29]   =  sel?  {w3_5_5_rdata[7:0]} : {w5_29_rdata[7:0]};
assign B[30]   =  sel?  {w3_5_6_rdata[7:0]} : {w5_30_rdata[7:0]};

assign B[31]   =  sel?  {w3_6_1_rdata[7:0]} : {w5_31_rdata[7:0]};
assign B[32]   =  sel?  {w3_6_2_rdata[7:0]} : {w5_32_rdata[7:0]};
assign B[33]   =  sel?  {w3_6_3_rdata[7:0]} : {w5_33_rdata[7:0]};
assign B[34]   =  sel?  {w3_6_4_rdata[7:0]} : {w5_34_rdata[7:0]};
assign B[35]   =  sel?  {w3_6_5_rdata[7:0]} : {w5_35_rdata[7:0]};
assign B[36]   =  sel?  {w3_6_6_rdata[7:0]} : {w5_36_rdata[7:0]};

assign B[37]   =  sel?  {w3_7_1_rdata[7:0]} : {w5_37_rdata[7:0]};
assign B[38]   =  sel?  {w3_7_2_rdata[7:0]} : {w5_38_rdata[7:0]};
assign B[39]   =  sel?  {w3_7_3_rdata[7:0]} : {w5_39_rdata[7:0]};
assign B[40]   =  sel?  {w3_7_4_rdata[7:0]} : {w5_40_rdata[7:0]};
assign B[41]   =  sel?  {w3_7_5_rdata[7:0]} : {w5_41_rdata[7:0]};
assign B[42]   =  sel?  {w3_7_6_rdata[7:0]} : {w5_42_rdata[7:0]};

assign B[43]   =  sel?  {w3_8_1_rdata[7:0]} : {w5_43_rdata[7:0]};
assign B[44]   =  sel?  {w3_8_2_rdata[7:0]} : {w5_44_rdata[7:0]};
assign B[45]   =  sel?  {w3_8_3_rdata[7:0]} : {w5_45_rdata[7:0]};
assign B[46]   =  sel?  {w3_8_4_rdata[7:0]} : {w5_46_rdata[7:0]};
assign B[47]   =  sel?  {w3_8_5_rdata[7:0]} : {w5_47_rdata[7:0]};
assign B[48]   =  sel?  {w3_8_6_rdata[7:0]} : {w5_48_rdata[7:0]};

assign B[49]   =  sel?  {w3_9_1_rdata[7:0]} : {w5_49_rdata[7:0]};
assign B[50]   =  sel?  {w3_9_2_rdata[7:0]} : {w5_50_rdata[7:0]};
assign B[51]   =  sel?  {w3_9_3_rdata[7:0]} : {w5_51_rdata[7:0]};
assign B[52]   =  sel?  {w3_9_4_rdata[7:0]} : {w5_52_rdata[7:0]};
assign B[53]   =  sel?  {w3_9_5_rdata[7:0]} : {w5_53_rdata[7:0]};
assign B[54]   =  sel?  {w3_9_6_rdata[7:0]} : {w5_54_rdata[7:0]};

assign B[55]   =  sel?  {w3_10_1_rdata[7:0]} : {w5_55_rdata[7:0]};
assign B[56]   =  sel?  {w3_10_2_rdata[7:0]} : {w5_56_rdata[7:0]};
assign B[57]   =  sel?  {w3_10_3_rdata[7:0]} : {w5_57_rdata[7:0]};
assign B[58]   =  sel?  {w3_10_4_rdata[7:0]} : {w5_58_rdata[7:0]};
assign B[59]   =  sel?  {w3_10_5_rdata[7:0]} : {w5_59_rdata[7:0]};
assign B[60]   =  sel?  {w3_10_6_rdata[7:0]} : {w5_60_rdata[7:0]};

assign B[61]   =  sel?  {w3_11_1_rdata[7:0]} : {w5_61_rdata[7:0]};
assign B[62]   =  sel?  {w3_11_2_rdata[7:0]} : {w5_62_rdata[7:0]};
assign B[63]   =  sel?  {w3_11_3_rdata[7:0]} : {w5_63_rdata[7:0]};
assign B[64]   =  sel?  {w3_11_4_rdata[7:0]} : {w5_64_rdata[7:0]};
assign B[65]   =  sel?  {w3_11_5_rdata[7:0]} : {w5_65_rdata[7:0]};
assign B[66]   =  sel?  {w3_11_6_rdata[7:0]} : {w5_66_rdata[7:0]};

assign B[67]   =  sel?  {w3_12_1_rdata[7:0]} : {w5_67_rdata[7:0]};
assign B[68]   =  sel?  {w3_12_2_rdata[7:0]} : {w5_68_rdata[7:0]};
assign B[69]   =  sel?  {w3_12_3_rdata[7:0]} : {w5_69_rdata[7:0]};
assign B[70]   =  sel?  {w3_12_4_rdata[7:0]} : {w5_70_rdata[7:0]};
assign B[71]   =  sel?  {w3_12_5_rdata[7:0]} : {w5_71_rdata[7:0]};
assign B[72]   =  sel?  {w3_12_6_rdata[7:0]} : {w5_72_rdata[7:0]};

assign B[73]   =  sel?  {w3_13_1_rdata[7:0]} : {w5_73_rdata[7:0]};
assign B[74]   =  sel?  {w3_13_2_rdata[7:0]} : {w5_74_rdata[7:0]};
assign B[75]   =  sel?  {w3_13_3_rdata[7:0]} : {w5_75_rdata[7:0]};
assign B[76]   =  sel?  {w3_13_4_rdata[7:0]} : {w5_76_rdata[7:0]};
assign B[77]   =  sel?  {w3_13_5_rdata[7:0]} : {w5_77_rdata[7:0]};
assign B[78]   =  sel?  {w3_13_6_rdata[7:0]} : {w5_78_rdata[7:0]};

assign B[79]   =  sel?  {w3_14_1_rdata[7:0]} : {w5_79_rdata[7:0]};
assign B[80]   =  sel?  {w3_14_2_rdata[7:0]} : {w5_80_rdata[7:0]};
assign B[81]   =  sel?  {w3_14_3_rdata[7:0]} : {w5_81_rdata[7:0]};
assign B[82]   =  sel?  {w3_14_4_rdata[7:0]} : {w5_82_rdata[7:0]};
assign B[83]   =  sel?  {w3_14_5_rdata[7:0]} : {w5_83_rdata[7:0]};
assign B[84]   =  sel?  {w3_14_6_rdata[7:0]} : {w5_84_rdata[7:0]};

assign B[85]   =  sel?  {w3_15_1_rdata[7:0]} : {w5_85_rdata[7:0]};
assign B[86]   =  sel?  {w3_15_2_rdata[7:0]} : {w5_86_rdata[7:0]};
assign B[87]   =  sel?  {w3_15_3_rdata[7:0]} : {w5_87_rdata[7:0]};
assign B[88]   =  sel?  {w3_15_4_rdata[7:0]} : {w5_88_rdata[7:0]};
assign B[89]   =  sel?  {w3_15_5_rdata[7:0]} : {w5_89_rdata[7:0]};
assign B[90]   =  sel?  {w3_15_6_rdata[7:0]} : {w5_90_rdata[7:0]};

assign B[91]   =  sel?  {w3_16_1_rdata[7:0]} : {w5_91_rdata[7:0]};
assign B[92]   =  sel?  {w3_16_2_rdata[7:0]} : {w5_92_rdata[7:0]};
assign B[93]   =  sel?  {w3_16_3_rdata[7:0]} : {w5_93_rdata[7:0]};
assign B[94]   =  sel?  {w3_16_4_rdata[7:0]} : {w5_94_rdata[7:0]};
assign B[95]   =  sel?  {w3_16_5_rdata[7:0]} : {w5_95_rdata[7:0]};
assign B[96]   =  sel?  {w3_16_6_rdata[7:0]} : {w5_96_rdata[7:0]};


assign B[97]   =  sel?  {w1_1_rdata[7:0]} :{w5_97_rdata[7:0]};
assign B[98]   =  sel?  {w1_2_rdata[7:0]} :{w5_98_rdata[7:0]};
assign B[99]   =  sel?  {w1_3_rdata[7:0]} :{w5_99_rdata[7:0]};
assign B[100]   =  sel?  {w1_4_rdata[7:0]} :{w5_100_rdata[7:0]};
assign B[101]   =  sel?  {w1_5_rdata[7:0]} :{w5_101_rdata[7:0]};
assign B[102]   =  sel?  {w1_6_rdata[7:0]} :{w5_102_rdata[7:0]};

assign B[103]   =  {w5_103_rdata[7:0]};
assign B[104]   =  {w5_104_rdata[7:0]};
assign B[105]   =  {w5_105_rdata[7:0]};
assign B[106]   =  {w5_106_rdata[7:0]};
assign B[107]   =  {w5_107_rdata[7:0]};
assign B[108]   =  {w5_108_rdata[7:0]};
assign B[109]   =  {w5_109_rdata[7:0]};
assign B[110]   =  {w5_110_rdata[7:0]};
assign B[111]   =  {w5_111_rdata[7:0]};
assign B[112]   =  {w5_112_rdata[7:0]};
assign B[113]   =  {w5_113_rdata[7:0]};
assign B[114]   =  {w5_114_rdata[7:0]};
assign B[115]   =  {w5_115_rdata[7:0]};
assign B[116]   =  {w5_116_rdata[7:0]};
assign B[117]   =  {w5_117_rdata[7:0]};
assign B[118]   =  {w5_118_rdata[7:0]};
assign B[119]   =  {w5_119_rdata[7:0]};
assign B[120]   =  {w5_120_rdata[7:0]};

assign B[121]   =  {w6_1_rdata[7:0]};
assign B[122]   =  {w6_2_rdata[7:0]};
assign B[123]   =  {w6_3_rdata[7:0]};
assign B[124]   =  {w6_4_rdata[7:0]};
assign B[125]   =  {w6_5_rdata[7:0]};
assign B[126]   =  {w6_6_rdata[7:0]};
assign B[127]   =  {w6_7_rdata[7:0]};
assign B[128]   =  {w6_8_rdata[7:0]};
assign B[129]   =  {w6_9_rdata[7:0]};
assign B[130]   =  {w6_10_rdata[7:0]};
assign B[131]   =  {w6_11_rdata[7:0]};
assign B[132]   =  {w6_12_rdata[7:0]};
assign B[133]   =  {w6_13_rdata[7:0]};
assign B[134]   =  {w6_14_rdata[7:0]};
assign B[135]   =  {w6_15_rdata[7:0]};
assign B[136]   =  {w6_16_rdata[7:0]};
assign B[137]   =  {w6_17_rdata[7:0]};
assign B[138]   =  {w6_18_rdata[7:0]};
assign B[139]   =  {w6_19_rdata[7:0]};
assign B[140]   =  {w6_20_rdata[7:0]};
assign B[141]   =  {w6_21_rdata[7:0]};
assign B[142]   =  {w6_22_rdata[7:0]};
assign B[143]   =  {w6_23_rdata[7:0]};
assign B[144]   =  {w6_24_rdata[7:0]};
assign B[145]   =  {w6_25_rdata[7:0]};
assign B[146]   =  {w6_26_rdata[7:0]};
assign B[147]   =  {w6_27_rdata[7:0]};
assign B[148]   =  {w6_28_rdata[7:0]};
assign B[149]   =  {w6_29_rdata[7:0]};
assign B[150]   =  {w6_30_rdata[7:0]};
assign B[151]   =  {w6_31_rdata[7:0]};
assign B[152]   =  {w6_32_rdata[7:0]};
assign B[153]   =  {w6_33_rdata[7:0]};
assign B[154]   =  {w6_34_rdata[7:0]};
assign B[155]   =  {w6_35_rdata[7:0]};
assign B[156]   =  {w6_36_rdata[7:0]};
assign B[157]   =  {w6_37_rdata[7:0]};
assign B[158]   =  {w6_38_rdata[7:0]};
assign B[159]   =  {w6_39_rdata[7:0]};
assign B[160]   =  {w6_40_rdata[7:0]};
assign B[161]   =  {w6_41_rdata[7:0]};
assign B[162]   =  {w6_42_rdata[7:0]};
assign B[163]   =  {w6_43_rdata[7:0]};
assign B[164]   =  {w6_44_rdata[7:0]};
assign B[165]   =  {w6_45_rdata[7:0]};
assign B[166]   =  {w6_46_rdata[7:0]};
assign B[167]   =  {w6_47_rdata[7:0]};
assign B[168]   =  {w6_48_rdata[7:0]};
assign B[169]   =  {w6_49_rdata[7:0]};
assign B[170]   =  {w6_50_rdata[7:0]};
assign B[171]   =  {w6_51_rdata[7:0]};
assign B[172]   =  {w6_52_rdata[7:0]};
assign B[173]   =  {w6_53_rdata[7:0]};
assign B[174]   =  {w6_54_rdata[7:0]};
assign B[175]   =  {w6_55_rdata[7:0]};
assign B[176]   =  {w6_56_rdata[7:0]};
assign B[177]   =  {w6_57_rdata[7:0]};
assign B[178]   =  {w6_58_rdata[7:0]};
assign B[179]   =  {w6_59_rdata[7:0]};
assign B[180]   =  {w6_60_rdata[7:0]};
assign B[181]   =  {w6_61_rdata[7:0]};
assign B[182]   =  {w6_62_rdata[7:0]};
assign B[183]   =  {w6_63_rdata[7:0]};
assign B[184]   =  {w6_64_rdata[7:0]};
assign B[185]   =  {w6_65_rdata[7:0]};
assign B[186]   =  {w6_66_rdata[7:0]};
assign B[187]   =  {w6_67_rdata[7:0]};
assign B[188]   =  {w6_68_rdata[7:0]};
assign B[189]   =  {w6_69_rdata[7:0]};
assign B[190]   =  {w6_70_rdata[7:0]};
assign B[191]   =  {w6_71_rdata[7:0]};
assign B[192]   =  {w6_72_rdata[7:0]};
assign B[193]   =  {w6_73_rdata[7:0]};
assign B[194]   =  {w6_74_rdata[7:0]};
assign B[195]   =  {w6_75_rdata[7:0]};
assign B[196]   =  {w6_76_rdata[7:0]};
assign B[197]   =  {w6_77_rdata[7:0]};
assign B[198]   =  {w6_78_rdata[7:0]};
assign B[199]   =  {w6_79_rdata[7:0]};
assign B[200]   =  {w6_80_rdata[7:0]};
assign B[201]   =  {w6_81_rdata[7:0]};
assign B[202]   =  {w6_82_rdata[7:0]};
assign B[203]   =  {w6_83_rdata[7:0]};
assign B[204]   =  {w6_84_rdata[7:0]};

assign B[205]   =  {w7_1_rdata[7:0]};
assign B[206]   =  {w7_2_rdata[7:0]};
assign B[207]   =  {w7_3_rdata[7:0]};
assign B[208]   =  {w7_4_rdata[7:0]};
assign B[209]   =  {w7_5_rdata[7:0]};
assign B[210]   =  {w7_6_rdata[7:0]};
assign B[211]   =  {w7_7_rdata[7:0]};
assign B[212]   =  {w7_8_rdata[7:0]};
assign B[213]   =  {w7_9_rdata[7:0]};
assign B[214]   =  {w7_10_rdata[7:0]};

assign  mac2_1_1 = P[1];
assign  mac2_1_2 = P[2];
assign  mac2_1_3 = P[3];
assign  mac2_1_4 = P[4];
assign  mac2_1_5 = P[5];
assign  mac2_1_6 = P[6];
assign  mac2_2_1 = P[7];
assign  mac2_2_2 = P[8];
assign  mac2_2_3 = P[9];
assign  mac2_2_4 = P[10];
assign  mac2_2_5 = P[11];
assign  mac2_2_6 = P[12];
assign  mac2_3_1 = P[13];
assign  mac2_3_2 = P[14];
assign  mac2_3_3 = P[15];
assign  mac2_3_4 = P[16];
assign  mac2_3_5 = P[17];
assign  mac2_3_6 = P[18];
assign  mac2_4_1 = P[19];
assign  mac2_4_2 = P[20];
assign  mac2_4_3 = P[21];
assign  mac2_4_4 = P[22];
assign  mac2_4_5 = P[23];
assign  mac2_4_6 = P[24];
assign  mac2_5_1 = P[25];
assign  mac2_5_2 = P[26];
assign  mac2_5_3 = P[27];
assign  mac2_5_4 = P[28];
assign  mac2_5_5 = P[29];
assign  mac2_5_6 = P[30];
assign  mac2_6_1 = P[31];
assign  mac2_6_2 = P[32];
assign  mac2_6_3 = P[33];
assign  mac2_6_4 = P[34];
assign  mac2_6_5 = P[35];
assign  mac2_6_6 = P[36];
assign  mac2_7_1 = P[37];
assign  mac2_7_2 = P[38];
assign  mac2_7_3 = P[39];
assign  mac2_7_4 = P[40];
assign  mac2_7_5 = P[41];
assign  mac2_7_6 = P[42];
assign  mac2_8_1 = P[43];
assign  mac2_8_2 = P[44];
assign  mac2_8_3 = P[45];
assign  mac2_8_4 = P[46];
assign  mac2_8_5 = P[47];
assign  mac2_8_6 = P[48];
assign  mac2_9_1 = P[49];
assign  mac2_9_2 = P[50];
assign  mac2_9_3 = P[51];
assign  mac2_9_4 = P[52];
assign  mac2_9_5 = P[53];
assign  mac2_9_6 = P[54];
assign  mac2_10_1 = P[55];
assign  mac2_10_2 = P[56];
assign  mac2_10_3 = P[57];
assign  mac2_10_4 = P[58];
assign  mac2_10_5 = P[59];
assign  mac2_10_6 = P[60];
assign  mac2_11_1 = P[61];
assign  mac2_11_2 = P[62];
assign  mac2_11_3 = P[63];
assign  mac2_11_4 = P[64];
assign  mac2_11_5 = P[65];
assign  mac2_11_6 = P[66];
assign  mac2_12_1 = P[67];
assign  mac2_12_2 = P[68];
assign  mac2_12_3 = P[69];
assign  mac2_12_4 = P[70];
assign  mac2_12_5 = P[71];
assign  mac2_12_6 = P[72];
assign  mac2_13_1 = P[73];
assign  mac2_13_2 = P[74];
assign  mac2_13_3 = P[75];
assign  mac2_13_4 = P[76];
assign  mac2_13_5 = P[77];
assign  mac2_13_6 = P[78];
assign  mac2_14_1 = P[79];
assign  mac2_14_2 = P[80];
assign  mac2_14_3 = P[81];
assign  mac2_14_4 = P[82];
assign  mac2_14_5 = P[83];
assign  mac2_14_6 = P[84];
assign  mac2_15_1 = P[85];
assign  mac2_15_2 = P[86];
assign  mac2_15_3 = P[87];
assign  mac2_15_4 = P[88];
assign  mac2_15_5 = P[89];
assign  mac2_15_6 = P[90];
assign  mac2_16_1 = P[91];
assign  mac2_16_2 = P[92];
assign  mac2_16_3 = P[93];
assign  mac2_16_4 = P[94];
assign  mac2_16_5 = P[95];
assign  mac2_16_6 = P[96];

assign  mac1_1 =  P[97];
assign  mac1_2 =  P[98];
assign  mac1_3 =  P[99];
assign  mac1_4 =  P[100];
assign  mac1_5 =  P[101];
assign  mac1_6 =  P[102];

assign mac3_1 = P[1];
assign mac3_2 = P[2];
assign mac3_3 = P[3];
assign mac3_4 = P[4];
assign mac3_5 = P[5];
assign mac3_6 = P[6];
assign mac3_7 = P[7];
assign mac3_8 = P[8];
assign mac3_9 = P[9];
assign mac3_10 = P[10];
assign mac3_11 = P[11];
assign mac3_12 = P[12];
assign mac3_13 = P[13];
assign mac3_14 = P[14];
assign mac3_15 = P[15];
assign mac3_16 = P[16];
assign mac3_17 = P[17];
assign mac3_18 = P[18];
assign mac3_19 = P[19];
assign mac3_20 = P[20];
assign mac3_21 = P[21];
assign mac3_22 = P[22];
assign mac3_23 = P[23];
assign mac3_24 = P[24];
assign mac3_25 = P[25];
assign mac3_26 = P[26];
assign mac3_27 = P[27];
assign mac3_28 = P[28];
assign mac3_29 = P[29];
assign mac3_30 = P[30];
assign mac3_31 = P[31];
assign mac3_32 = P[32];
assign mac3_33 = P[33];
assign mac3_34 = P[34];
assign mac3_35 = P[35];
assign mac3_36 = P[36];
assign mac3_37 = P[37];
assign mac3_38 = P[38];
assign mac3_39 = P[39];
assign mac3_40 = P[40];
assign mac3_41 = P[41];
assign mac3_42 = P[42];
assign mac3_43 = P[43];
assign mac3_44 = P[44];
assign mac3_45 = P[45];
assign mac3_46 = P[46];
assign mac3_47 = P[47];
assign mac3_48 = P[48];
assign mac3_49 = P[49];
assign mac3_50 = P[50];
assign mac3_51 = P[51];
assign mac3_52 = P[52];
assign mac3_53 = P[53];
assign mac3_54 = P[54];
assign mac3_55 = P[55];
assign mac3_56 = P[56];
assign mac3_57 = P[57];
assign mac3_58 = P[58];
assign mac3_59 = P[59];
assign mac3_60 = P[60];
assign mac3_61 = P[61];
assign mac3_62 = P[62];
assign mac3_63 = P[63];
assign mac3_64 = P[64];
assign mac3_65 = P[65];
assign mac3_66 = P[66];
assign mac3_67 = P[67];
assign mac3_68 = P[68];
assign mac3_69 = P[69];
assign mac3_70 = P[70];
assign mac3_71 = P[71];
assign mac3_72 = P[72];
assign mac3_73 = P[73];
assign mac3_74 = P[74];
assign mac3_75 = P[75];
assign mac3_76 = P[76];
assign mac3_77 = P[77];
assign mac3_78 = P[78];
assign mac3_79 = P[79];
assign mac3_80 = P[80];
assign mac3_81 = P[81];
assign mac3_82 = P[82];
assign mac3_83 = P[83];
assign mac3_84 = P[84];
assign mac3_85 = P[85];
assign mac3_86 = P[86];
assign mac3_87 = P[87];
assign mac3_88 = P[88];
assign mac3_89 = P[89];
assign mac3_90 = P[90];
assign mac3_91 = P[91];
assign mac3_92 = P[92];
assign mac3_93 = P[93];
assign mac3_94 = P[94];
assign mac3_95 = P[95];
assign mac3_96 = P[96];
assign mac3_97 = P[97];
assign mac3_98 = P[98];
assign mac3_99 = P[99];
assign mac3_100 = P[100];
assign mac3_101 = P[101];
assign mac3_102 = P[102];
assign mac3_103 = P[103];
assign mac3_104 = P[104];
assign mac3_105 = P[105];
assign mac3_106 = P[106];
assign mac3_107 = P[107];
assign mac3_108 = P[108];
assign mac3_109 = P[109];
assign mac3_110 = P[110];
assign mac3_111 = P[111];
assign mac3_112 = P[112];
assign mac3_113 = P[113];
assign mac3_114 = P[114];
assign mac3_115 = P[115];
assign mac3_116 = P[116];
assign mac3_117 = P[117];
assign mac3_118 = P[118];
assign mac3_119 = P[119];
assign mac3_120 = P[120];

assign mac4_1 = P[121];
assign mac4_2 = P[122];
assign mac4_3 = P[123];
assign mac4_4 = P[124];
assign mac4_5 = P[125];
assign mac4_6 = P[126];
assign mac4_7 = P[127];
assign mac4_8 = P[128];
assign mac4_9 = P[129];
assign mac4_10 = P[130];
assign mac4_11 = P[131];
assign mac4_12 = P[132];
assign mac4_13 = P[133];
assign mac4_14 = P[134];
assign mac4_15 = P[135];
assign mac4_16 = P[136];
assign mac4_17 = P[137];
assign mac4_18 = P[138];
assign mac4_19 = P[139];
assign mac4_20 = P[140];
assign mac4_21 = P[141];
assign mac4_22 = P[142];
assign mac4_23 = P[143];
assign mac4_24 = P[144];
assign mac4_25 = P[145];
assign mac4_26 = P[146];
assign mac4_27 = P[147];
assign mac4_28 = P[148];
assign mac4_29 = P[149];
assign mac4_30 = P[150];
assign mac4_31 = P[151];
assign mac4_32 = P[152];
assign mac4_33 = P[153];
assign mac4_34 = P[154];
assign mac4_35 = P[155];
assign mac4_36 = P[156];
assign mac4_37 = P[157];
assign mac4_38 = P[158];
assign mac4_39 = P[159];
assign mac4_40 = P[160];
assign mac4_41 = P[161];
assign mac4_42 = P[162];
assign mac4_43 = P[163];
assign mac4_44 = P[164];
assign mac4_45 = P[165];
assign mac4_46 = P[166];
assign mac4_47 = P[167];
assign mac4_48 = P[168];
assign mac4_49 = P[169];
assign mac4_50 = P[170];
assign mac4_51 = P[171];
assign mac4_52 = P[172];
assign mac4_53 = P[173];
assign mac4_54 = P[174];
assign mac4_55 = P[175];
assign mac4_56 = P[176];
assign mac4_57 = P[177];
assign mac4_58 = P[178];
assign mac4_59 = P[179];
assign mac4_60 = P[180];
assign mac4_61 = P[181];
assign mac4_62 = P[182];
assign mac4_63 = P[183];
assign mac4_64 = P[184];
assign mac4_65 = P[185];
assign mac4_66 = P[186];
assign mac4_67 = P[187];
assign mac4_68 = P[188];
assign mac4_69 = P[189];
assign mac4_70 = P[190];
assign mac4_71 = P[191];
assign mac4_72 = P[192];
assign mac4_73 = P[193];
assign mac4_74 = P[194];
assign mac4_75 = P[195];
assign mac4_76 = P[196];
assign mac4_77 = P[197];
assign mac4_78 = P[198];
assign mac4_79 = P[199];
assign mac4_80 = P[200];
assign mac4_81 = P[201];
assign mac4_82 = P[202];
assign mac4_83 = P[203];
assign mac4_84 = P[204];

assign mac5_1 = P[205];
assign mac5_2 = P[206];
assign mac5_3 = P[207];
assign mac5_4 = P[208];
assign mac5_5 = P[209];
assign mac5_6 = P[210];
assign mac5_7 = P[211];
assign mac5_8 = P[212];
assign mac5_9 = P[213];
assign mac5_10 = P[214];


endmodule 