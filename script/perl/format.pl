open my $f_fh,'>','f.txt'
	or die "could not open f.txt:$!";
my $num;


	foreach(1..5){
		foreach(1..5){
		if(<>=~/(\d+)\Z/){
			print $f_fh "$1	";
		}
	}	

		print $f_fh "\n";
}



#		foreach(1..84){
#		if(<>=~/(\d+)\Z/){
#			print $f_fh "$1	\n";
#		}

#	}	


