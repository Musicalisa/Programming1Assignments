#!/usr/bin/perl -w -s

open NEWFILE, '<', 'signup_sheet.txt' || die "File did not open - $!\n";

while (<NEWFILE>) {
	chomp ($_);
	print "$_\n";
}

close NEWFILE;


