#!/usr/bin/perl -w -s
use Cwd;

print cwd . "\n\n";

chdir '../Files' || die "Can\'t open directory: $!\n";

my @contents = glob ('*.xml');

	if (-e 'xml_files.txt') {
		rename ('xml_files.txt' => 'xml_files.bak');

	}elsif  (-e 'xml_files.bak') {
		unlink('xml_files.bak');
		rename ('xml_files.txt' => 'xml_files.bak');		
	}else {
		# (do nothing ...)
	};

open (NEWFILE,'>','../Notes/xml_files.txt') || die "File did not open - $!\n";
	foreach (@contents) {
		print(NEWFILE "$_\n");
		}		
close NEWFILE;



