#!/usr/bin/perl -w -s

print "Please provide a diary entry. Press Cntrl-D when finished: \n";
chomp (my @entry = <STDIN>);

open NEWFILE, '>>', 'diary.txt' || die "File did not open - $!\n";

print NEWFILE "@entry\n";

close NEWFILE;


