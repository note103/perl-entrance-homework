#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
binmode STDOUT, ":utf8";

#ここからしばらく素材データ。
my $papix = {
    name => 'papix',
    affiliation => 'namba.pm',
    perl => 60,
    python => 50,
    ruby => 50,
    php => 80,
    binary => 30,
};
my $boolfool = {
    name => 'boolfool',
    affiliation => 'namba.pm',
    perl => 40,
    python => 10,
    ruby => 20,
    php => 30,
    binary => 10,
};
my $moznion = {
    name => 'moznion',
    affiliation => 'hachioji.pm',
    perl => 100,
    python => 70,
    ruby => 80,
    php => 50,
    binary => 50,
};
my $binarian = {
    name => 'binarian',
    affiliation => 'hachioji.pm',
    perl => 10,
    python => 11,
    ruby => 1,
    php => 100,
    binary => 100,
};
my $uzulla = {
    name => 'uzulla',
    affiliation => 'hachioji.pm',
    perl => 1,
    python => 0.01,
    ruby => 0.5,
    php => 4,
    binary => 0.01,
};

#ここから回答。
my @people = ($papix, $boolfool, $moznion, $binarian, $uzulla);
my @lang = qw(perl python ruby php binary);

for my $people(@people) {
    print "$people->{name}: \n";
    for my $lang (@lang) {
        my $num = $people->{$lang};
        my $rate;
        if ($num == 100) {
            $rate = "★★★★★\n";
        } elsif ($num <= 99 && $num >= 80) {
            $rate = "★★★★\n";
        } elsif ($num <= 79 && $num >= 60) {
            $rate = "★★★\n";
        } elsif ($num <= 59 && $num >= 40) {
            $rate = "★★\n";
        } elsif ($num <= 39 && $num >= 20) {
            $rate = "★\n";
        } else {
            $rate = "\n";
        }
    print "    $lang: $rate";
    }
}

__END__
Gistにあげた
https://gist.github.com/note103/7241971

