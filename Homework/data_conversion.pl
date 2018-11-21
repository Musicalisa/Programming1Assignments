#!/usr/bin/perl 

#Lisa Cifuentes
#11/03/16

print "\nPlease provide a csv file name (preferably classical_pieces.csv): \n";
chomp ($file = <STDIN>);

#opening csv, putting its info. into an array, and initializing array for validated data
open (NEWFILE, '<', "../Notes/$file") || die "File did not open - $!\n";
my @classical = <NEWFILE>;
my @validated_classical;

#using variable as a match expression, regex to validate composer and piece:
my $lookfor1 = '[A-Z][a-z]+\s[A-Z]?[a-z]+[\s]?[A-Z]?[a-z]?';
#using variable as a match expression, regex to validate year:
my $lookfor2 = '\b[1][8][0-9][0-9]\b';

# TEST:  *** if ($string =~ m/($lookfor)/) {...};

#creating a subroutine to later use within foreach loop
sub validate {
	if ($_[0] =~ m/$_[1]/) {
		push(@validated_classical,"$_[0]\n");
	}else {
		print "\nERROR!" . $_[0] . "is not a valid " .  $_[2] . "Please provide valid input.\n\n";
		push(@validated_classical, "");
}
}

#foreach loop that validates each line of split data from csv file for composer, piece, and year:
foreach $_(@classical) {
	my @split = split(',', $_);
	&validate($split[0],$lookfor1,"name for a composer.");
	&validate($split[1],$lookfor1,"piece.");
	&validate($split[2],$lookfor2,"year. It must be in the 1800s.");
}

close (NEWFILE);

#chomping array and date of composition to prevent errors in xml layout
chomp (@validated_classical);
chomp ($validated_classical[2]);
chomp ($validated_classical[5]);
chomp ($validated_classical[8]);

#creating subroutine for csv to xml file conversion
sub write {
	print NEWFILE2 "	<$_[0]>\n";
	print NEWFILE2 "		<composer> $validated_classical[$_[1]] </composer>\n";
	print NEWFILE2 "		<piece> $validated_classical[$_[2]] </piece>\n";
	print NEWFILE2 "		<year> $validated_classical[$_[3]] </year>\n";
	print NEWFILE2 " 	</$_[0]>\n";
}

#opening xml file, printing content (through foreach loops that call the subroutine above), and closing it.
open (NEWFILE2, '>', '../Notes/classical_pieces.xml' || die "File did not open - $!\n");
print NEWFILE2 "<My Favorite Romantic Era Classical Pieces>\n";

foreach ($validated_classical[0]) {
	&write("Piece No. 1",0,1,2);
	}
foreach ($validated_classical[1]) {
	&write("Piece No. 2",3,4,5);
	}
foreach ($validated_classical[2]) {
	&write("Piece No. 3",6,7,8);
	}

print NEWFILE2 "</My Favorite Romantic Era Classical Pieces>\n";

close NEWFILE2;
