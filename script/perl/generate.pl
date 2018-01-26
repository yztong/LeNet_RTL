#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 1; $j < 11; $j++) {


			
			my $i = ($j-1)*8 ;
			my $b = $i + 7;
			print $gen_fh "	assign w7_$j\_rdata = w7_rdata[$b:$i];\n";



			
}