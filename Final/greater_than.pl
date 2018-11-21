#!/usr/bin/perl -w -s

print "Please provide two numbers. Press enter after each one and Cntrl-D when finished: \n";
chomp (my @numbers = <STDIN>);

while ($numbers[0] == $numbers[1]) {
	print "Those numbers are equal in value. Please provide two numbers that are not equal in value: \n";
	chomp (@numbers = <STDIN>);
}

sub greater {
	 if ($_[0] > $_[1]) {
		print "$_[0] is larger!\n";
	}else {
		print "$_[1] is larger!\n";	
	}
}

&greater (@numbers);
