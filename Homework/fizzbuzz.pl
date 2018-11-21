#!/usr/bin/perl -w -s

my @bin_string;
my $addend;
my @addends;
my $sum;

print "\n\nPlease enter an 8-bit binary number from LSB to MSB, pressing the space bar between each bit.\n\n";

chomp(my $string = <STDIN>);
@bin_string = split (' ',$string);


print "\n\n";

foreach(@bin_string) {
    print "$_ ";
}

sub convert {
    return (2 ** $_[0]);
}

for ($i=0;$i<($bin_string[$i]);$i++) {
    if ($bin_string eq "1") {
        $addend = &convert($i);
        push(@addends, $addend)
    }
}

$sum = 0;
foreach (@addends) {
    $sum += $_;
}

print $sum "\n\n";

