#!/usr/bin/perl
print "Please give me an adjective: ";
chomp($adj1 = <STDIN>);

print "Please give me a plural noun: ";
chomp($plunoun = <STDIN>);

print "Please give an adjective: ";
chomp($adj2 = <STDIN>);

print "Please give me another adjective: ";
chomp($adj3 = <STDIN>);

print "Please give me yet another adjective: ";
chomp($adj4 = <STDIN>);

print "One more adjective, please: ";
chomp($adj5 = <STDIN>);

print "Choose a noun: ";
chomp($noun = <STDIN>);

print "Choose a plural noun: ";
chomp($plunoun2 = <STDIN>);

print "Please give me an adjective: ";
chomp($adj6 = <STDIN>);

print "Lastly, please give me a noun: ";
chomp($noun2 = <STDIN>);

print "\n\n";

print "Dear User,\n\n Please excuse me for being " . $adj1 . " when trying to follow your commands.\n";

print "Sometimes, when you ask me to compute " . $plunoun . ", I don't understand you and end up making " . $adj2 . " mistakes.\n";

print "But I know you are the " . $adj3 . " human. I am a mere computer, " . $adj4 . " and " . $adj5 . ".\n";

print "Although my " . $noun . " can sometimes cause " . $plunoun2 . ", I promise my intentions are " . $adj6 . ".\n";

print "I trust you more than I trust my " . $noun2 . ". In fact, I trust you more that I trust myself.\n";

print "\n\n";
