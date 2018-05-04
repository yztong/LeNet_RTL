#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 0; $j <=639; $j++) {
		my $i = $j+1;
		my $b = $j+141;
		print $gen_fh 		"$b: if(flag[$i])
			vga_rgb <={DATA_W{1'b0}};
			else
			vga_rgb <=~{DATA_W{din}};\n"





			
}