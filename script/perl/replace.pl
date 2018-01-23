#! /usr/bin/perl

open my $new_fh,'>','new.txt'
	or die "could not open new.txt:$!";
my $num;
while(<>){

	s/(.*)/$1 $1(\/\*autoinst\*\/);/;
	print $new_fh $_;

}