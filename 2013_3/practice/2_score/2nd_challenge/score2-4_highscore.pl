#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

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

my @people = ($papix, $boolfool, $moznion, $binarian, $uzulla);
my @lang = qw/perl python ruby php binary/;
my $highscore;

for my $people (@people) {
    for my $lang (@lang) {
        my $score = $people->{$lang};
        if ($score >= 60) {
            push @{$highscore->{$lang}}, $people->{name};
        }
    }
}
print Dumper $highscore;

__END__
#2013/12/06 16:24:27
#できたっぽい？

## 4. 所属毎の perl のスコアが 60 以上の人の名前を格納する
#perlの、じゃないだろ。
- `$highscore` と言ったハッシュリファレンスを用意し、所属毎に優秀な人物の名前を push して下さい
- `$highscore`における key を所属として配列のリファレンスにするのがいいですね


