c#!/usr/bin/perl

use warnings;
use strict;

print "Please provide a file name, preferably ../Files/signup.txt: \n";
chomp (my $file = <STDIN>);

open NEWFILE,'<', $file || die "File did not open - $!/n";
while (<NEWFILE>) {
	chomp ($_);
	print "$_\n";
}

close NEWFILE;

print "Do you want to sign up? (y or n): \n";
chomp (my $ans = <STDIN>);

if ($ans eq (lc("Y"))) {
	print "Please provide your name: \n";
	chomp (my $name = <STDIN>);
	open NEWFILE, '>>', $file || die "File did not open - $!\n";
	print NEWFILE "$name\n";
	close NEWFILE;
}

