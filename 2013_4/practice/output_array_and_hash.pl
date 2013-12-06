#!/usr/bin/env perl
use strict;
use warnings;

my %team = ( 
    giants => 'hara', 
    rakuten => 'hoshino', 
    hiroshima => 'nomura',
);
my @pitcher = qw/ tanaka uehara kuroki wakui /;

sub output {
    my ($hash, $array) = @_;
    print "director:\n";
    for my $director (keys %$hash) {
        print "$hash->{$director}\n";
    } 
    print "pitcher:\n";
    for my $pitch (@$array) {
        print "$pitch\n";
    }
} 

output(\%team, \@pitcher);
