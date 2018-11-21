\#!/usr/bin/perl

use warnings;
use strict;

my @pez;

print "\nThe pez dispenser is empty.\n\n";

print "@pez\n\n";

for (my $i=0; $i<10; $i++) {
	print "Please give me a color: \n";
	chomp(my $var = <STDIN>);
	push(@pez,$var);
}

print @pez;

print "\n";

for (my $i=0; $i<10; $i++) {
	pop(@pez);
	print @pez;
	print "\n";
}







