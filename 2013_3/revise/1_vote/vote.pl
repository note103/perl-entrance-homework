#!/usr/bin/env perl
use strict;
use warnings;

my $me = {
    name => 'Hiroaki',
    food => [qw/egg rice potato beef/],
};
my $bob = {
    name => 'Bob',
    food => [qw/vegi egg suiton beef/],
};
my $alice = {
    name => 'Alice',
    food => [qw/vegi egg tomato rice/],
};

my @people = ($me, $bob, $alice);

my %count_foods;

for my $people (@people) {
    my $person_foods = $people->{food};
    for my $name_food (@$person_foods) {
        $count_foods{$name_food}++;
    }
}

my %ranking;
my $ranking = \%ranking;

for my $name_food2 (keys %count_foods) {
    my $voted_num = $count_foods{$name_food2};
    push @{$ranking{$voted_num}}, $name_food2;
}

for my $sorted_ranking (sort {$b <=> $a} keys %ranking) {
    print "$sorted_ranking: \n";
    for my $sorted_foods (@{$ranking->{$sorted_ranking}}) {
        print "  $sorted_foods\n";
    }
}
