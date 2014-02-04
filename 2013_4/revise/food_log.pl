#!/usr/bin/env perl
use strict;
use warnings;

my $data = q{
    papix : sushi
    moznion : soba
    boolfool : sushi
    macopy : sushi
};
#q{};って書き方初めて見た

my @count = split /\n/, $data;
my ($sushi, $soba);
for my $count (@count) {
    if ($count =~ /sushi/) {
        $sushi++;
    } elsif ($count =~ /soba/) {
        $soba++;
    }
}

print "sushi: $sushi\n";
print "soba: $soba\n";


__END__
my $count;
for my $str (@str) {
    if ($str =~ / : /) {
        $count++;
    }
}

print "$count\n";

