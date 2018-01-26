#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 1; $j < 17; $j++) {

		for (my $var = 1; $var <7; $var++){
			
			my $i = ($j-1)*48 + ($var-1)*8;
			my $b = $i + 7;
			print $gen_fh "	assign w3_$j\_$var\_rdata = w3_rdata[$b:$i];\n";


		}
			
}