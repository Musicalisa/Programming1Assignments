#!/usr/bin/perl -w -s

my @fruit = qw(apple banana pear orange kiwi);

print "@fruit\n\n";

print "Please provide a number between 1 and 5: ";
chomp (my $num = <STDIN>);

if (($num >= 1) && ($num <= 5)) {
	print "\n$fruit[$num - 1]\n\n";
}else {
	while (($num < 1) || ($num > 5)) {
		print "\n\nYou didn\'t provide a number between 1 and 5.\n\nPlease provide a number between 1 and 5: ";
		chomp ($num = <STDIN>);
	}
	print "\n$fruit[$num - 1]\n\n";
}

 
