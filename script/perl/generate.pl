#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 1; $j < 17; $j++) {
			my $i = ($j-1)*16;
			my $b = $i + 15;
			print $gen_fh "	assign f4_$j\_rdata = f4_rdata[$b:$i];\n";
}