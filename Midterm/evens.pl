#!/usr/bin/perl -w -s

print "Please provide a number: ";
chomp (my $num = <STDIN>);

if ($num % 2 == 0) {
	print "\nIt\'s even!\n\n";
}else {
	print "\nIt\'s odd!\n\n";
}


