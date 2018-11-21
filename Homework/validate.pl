#!/usr/bin/perl -w -s

#Lisa Cifuentes
#10/28/16

open (NEWFILE, '<', 'validate.csv') || die "File did not open - $!\n";
my @user_info = <NEWFILE>;

#name, number, email
foreach $_(@user_info) {

# name number email with no commas to pull only the names more easily later 
my @split_string = split(',', $_); 

	if (m/[(]?\d{3}\)?-?\d{3}-?\d{4}/) {
		print "";
	}else{
		print "\nERROR! $split_string[0] has an invalid phone number.\n\n";
	}
	if (m/.+\@.+\..+/) {
		print "";
	 }else {
		print "\nERROR! $split_string[0] has an invalid email address.\n\n";
	}
}

close NEWFILE;
