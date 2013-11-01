#!/usr/bin/env perl

use strict;
use warnings;
use DDP;

my $people;
my $average;

my $papix = {
    name => 'papix',
    affiliation => 'namba.pm',
    perl => 60,
    python => 50,
    ruby => 50,
    php => 80,
    binary => 30,
    sum => 270,
};

$people = $papix;
my $num1 = (($people->{perl} +$people->{python} +$people->{ruby}) / 3);

my $boolfool = {
    name => 'boolfool',
    affiliation => 'namba.pm',
    perl => 40,
    python => 10,
    ruby => 20,
    php => 30,
    binary => 10,
    sum => 110,
};

$people = $boolfool;
my $num2 = (($people->{perl} +$people->{python} +$people->{ruby}) / 3);

my $moznion = {
    name => 'moznion',
    affiliation => 'hachioji.pm',
    perl => 100,
    python => 70,
    ruby => 80,
    php => 50,
    binary => 50,
    sum => 350,
};

$people = $moznion;
my $num3 = (($people->{perl} +$people->{python} +$people->{ruby}) / 3);

$average = {
    papix => $num1,
    boolfool => $num2,
    moznion => $num3,
};

p $average;
