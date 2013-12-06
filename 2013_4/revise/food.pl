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

my @str = split (/\n/, $data);

my $count;
for my $str (@str) {
    if ($str =~ / : /) {
        $count++;
    }
}

print "$count\n";

