#!/usr/bin/perl

print "Please give me a number: ";
chomp($foo =  <STDIN>);
print "Please give me another number: ";
chomp($baz = <STDIN>);

print "$foo + $baz = " . ($foo + $baz) . "\n";
print "$foo - $baz = " . ($foo - $baz) . "\n";
print "$foo * $baz = " . ($foo * $baz) . "\n";
print "$foo / $baz = " . ($foo / $baz) . "\n";
print "$foo % $baz = " . ($foo % $baz) . "\n";
