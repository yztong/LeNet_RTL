#! /usr/bin/perl
open my $gen_fh,'>','gen.txt'
	or die "could not open gen.txt:$!";

	for (my $j = 15; $j >=0; $j--) {


			
			my $i = ($j-1)*16 ;
			my $b = $i + 15;
			print $gen_fh "d_out[$j],";



			
}