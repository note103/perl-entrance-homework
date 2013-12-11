#!/usr/bin/env perl

use strict;
use warnings;

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

my @people = ($papix, $boolfool, $moznion,$binarian, $uzulla);
my @lang = qw/ perl python ruby php binary /;

for my $people (@people) {
    my $sum = 0;
    for my $lang (@lang) {
        $sum += $people->{$lang};
    }
    print "$people->{name}\t=>$sum\n";
}

__END__
## 1. 点数の合計
- それぞれの人物の`perl`、`ruby`、`python` ... といった分野毎の合計値をそれぞれのリファレンスに追加しましょう
- `@people` や `@languages` と言った変数に各々のリファレンスや言語などを格納しておくとやりやすいでしょう

#log: 
#2013/12/06 00:27:12完了
#2013/12/06 17:28:30修正

#issue: 「それぞれの人物の`perl`、`ruby`、`python` ... といった得点の合計値を求め、『sum => 210,』といった形にしましょう」とかの方が意味がわかりやすい。この問題文だとどんな回答が求められているのかがわかりづらい。


