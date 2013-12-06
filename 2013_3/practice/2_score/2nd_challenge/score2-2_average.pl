#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# 2. 言語毎の平均
#- 新たに`$average`といったハッシュリファレンスに各々の人物の名前を key として、 `perl`、`ruby`、`python`の平均値を格納してください
#- 出力には `Data::Dumper` などを使って表示させてください
#
#「合計の平均値」としたほうがよい。

my $papix = {
    name        => 'papix',
    affiliation => 'namba.pm',
    perl        => 60,
    python      => 50,
    ruby        => 50,
    php         => 80,
    binary      => 30,
};
my $boolfool = {
    name        => 'boolfool',
    affiliation => 'namba.pm',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 10,
};
my $moznion = {
    name        => 'moznion',
    affiliation => 'hachioji.pm',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $binarian = {
    name        => 'binarian',
    affiliation => 'hachioji.pm',
    perl        => 10,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $uzulla = {
    name        => 'uzulla',
    affiliation => 'hachioji.pm',
    perl        => 1,
    python      => 0.01,
    ruby        => 0.5,
    php         => 4,
    binary      => 0.01,
};

my $average;
my @people = ($papix, $boolfool, $moznion, $binarian, $uzulla);
for my $people (@people) {
    my $result = ($people->{perl} + $people->{python} + $people->{ruby}) / 3;
    my $key = $people->{name};
    $average->{$key} = $result;
}
print Dumper $average;
