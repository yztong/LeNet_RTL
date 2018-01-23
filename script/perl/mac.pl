open my $a_fh,'<','a.txt'
	or die "aaa";
open my $f_fh,'<','f.txt'
	or die "aaa";


my $sum = 0;
while(<$a_fh>){
	chomp;
	chomp(my $f=<$f_fh>);
	$sum += $_ * $f;


}

print $sum; 