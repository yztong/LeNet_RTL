//==================================================================================================
//  Filename      : defines.v
//  Created On    : 2018-01-17 21:45:34
//  Last Modified : 2018-01-22 13:23:39
//  Revision      : 
//  Author        : YzTong
//  Company       : UESTC
//  Email         : yztong1994@gmail.com
//
//  Description   : 
//
//
//==================================================================================================
`define  W_ROM_WIDTH 	8
`define  F1_ROM_WIDTH 	8

`define  MAC_OUT_WIDTH  19
`define  BIAS_WIDTH 	16	
`define  F_RAM_WIDTH	16

`define  F1_ROM_DEPTH	1024
`define  F2_RAM_DEPTH	784
`define  F3_RAM_DEPTH	196
`define  F4_RAM_DEPTH	100
`define  F5_RAM_DEPTH	25


`define  W1_ROM_DEPTH   25
`define  W3_ROM_DEPTH   25
`define  W5_ROM_DEPTH   400
`define  W6_ROM_DEPTH   120
`define  W7_ROM_DEPTH   84


//MEM
`define  F1_ADDR_MSB	 	clogb2(`F1_ROM_DEPTH-1)
`define  F2_ADDR_MSB	 	clogb2(`F2_RAM_DEPTH-1)
`define  F3_ADDR_MSB		clogb2(`F3_RAM_DEPTH-1)
`define  F4_ADDR_MSB		clogb2(`F4_RAM_DEPTH-1)
`define  F5_ADDR_MSB		clogb2(`F5_RAM_DEPTH-1)
`define  FC3_CNT0_MSB		clogb2(`FC3_CNT0_SIZE-1)
`define  F6_ADDR_MSB     	clogb2(120-1)
`define  F7_ADDR_MSB     	clogb2(84-1)



`define  W1_ADDR_MSB     	clogb2(`W_ROM_WIDTH-1)
`define  W3_ADDR_MSB     	clogb2(`W_ROM_WIDTH-1)
`define  W5_ADDR_MSB     	clogb2(`W_ROM_WIDTH-1)
`define  W6_ADDR_MSB     	clogb2(`W_ROM_WIDTH-1)
`define  W7_ADDR_MSB     	clogb2(`W_ROM_WIDTH-1)

//COMV1
`define  CONV1_KERNEL_CNT	5
`define  CONV1_OUTPUT_CNT  28
`define  CONV1_KERNEL_MSB  clogb2(`CONV1_KERNEL_CNT-1)
`define  CONV1_OUTPUT_MSB  clogb2(`CONV1_OUTPUT_CNT-1)



//CONV2
`define  CONV2_KERNEL_CNT	5
`define  CONV2_OUTPUT_CNT  10
`define  CONV2_KERNEL_MSB  clogb2(`CONV2_KERNEL_CNT-1)
`define  CONV2_OUTPUT_MSB  clogb2(`CONV2_OUTPUT_CNT-1)


//POOL1
`define  POOL1_OUTPUT_CNT	14
`define  POOL1_OUTPUT_MSB	clogb2(`POOL1_OUTPUT_CNT-1)


//POOL2
`define  POOL2_OUTPUT_CNT	5
`define  POOL2_OUTPUT_MSB	clogb2(`POOL2_OUTPUT_CNT-1)



//FC1
`define  FC1_CNT0_SIZE	25
`define  FC1_CNT1_SIZE	16
`define  FC1_CNT0_MSB	clogb2(`FC1_CNT0_SIZE-1)
`define  FC1_CNT1_MSB	clogb2(`FC1_CNT1_SIZE-1)





//FC2
`define  FC2_CNT0_SIZE	120
`define  FC2_CNT0_MSB		clogb2(`FC2_CNT0_SIZE-1)


//FC3
`define  FC3_CNT0_SIZE	84
`define  FC3_CNT0_MSB		clogb2(`FC3_CNT0_SIZE-1)