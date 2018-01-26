#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 1; $j < 7; $j++) {
			my $i = ($j-1)*16;
			my $b = $i + 15;
			print $gen_fh "	assign f2_$j\_rdata = f2_rdata[$b:$i];\n";
}