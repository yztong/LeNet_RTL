#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 1; $j < 11; $j++) {
			my $i = $j -1 ;
			print $gen_fh "	create_ip -name blk_mem_gen -vendor xilinx.com -library ip -version 8.4 -module_name blk_mem_gen_w7_$j\_rom -dir z:/work/CNN/Vivado_prj/LeNET_rtl/LeNET_rtl.srcs/sources_1/ip
set_property -dict [list CONFIG.Component_Name {blk_mem_gen_w7_$j\_rom} CONFIG.Memory_Type {Single_Port_ROM} CONFIG.Write_Width_A {8} CONFIG.Write_Depth_A {84} CONFIG.Read_Width_A {8} CONFIG.Enable_A {Always_Enabled} CONFIG.Write_Width_B {8} CONFIG.Read_Width_B {8} CONFIG.Load_Init_File {true} CONFIG.Coe_File {Z:/work/CNN/Vivado_prj/LeNET_rtl/LeNET_rtl.srcs/sources_1/coe/w7_rom/w7_$j\_rom.coe} CONFIG.Fill_Remaining_Memory_Locations {true} CONFIG.Port_A_Write_Rate {0}] [get_ips blk_mem_gen_w7_$j\_rom]\n"

}