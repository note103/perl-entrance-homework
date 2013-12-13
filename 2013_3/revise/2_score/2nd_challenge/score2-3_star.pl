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

my @people = ($papix, $boolfool, $moznion, $binarian, $uzulla);
my @lang = qw/perl python ruby php binary/;

for my $people (@people) {
        print "$people->{name}:\n";
    for my $lang (@lang) {
        my $str = $people->{$lang};
        if ($str == 100) {
            print "$lang: ★★★★★\n";
        } elsif ($str <= 99 && $str > 79) {
            print "$lang: ★★★★\n";
        } elsif ($str <= 79 && $str > 59) {
            print "$lang: ★★★\n";
        } elsif ($str <= 59 && $str > 39) {
            print "$lang: ★★\n";
        } elsif ($str <= 39 && $str > 19) {
            print "$lang: ★\n";
        } else {
            print "$lang:\n";
        }
    }
    print "\n";
}

__END__
## 3. 五段階評価
     0 - 19 =>
    20 - 39 => ★
    40 - 59 => ★★
    60 - 79 => ★★★
    80 - 99 => ★★★★
    100     => ★★★★★
    ----
    boolfool:
    perl: ★★
    python:
    ruby: ★
    php:
    binary:

- それぞれの人物の言語毎の成績を上記を参考に5段階表示して出力して下さい
- 全角文字を出力するので冒頭に`binmode STDOUT, ":utf8";`と書いておくとよいでしょう

#log: 2013/12/06 15:58:11完了
#比較的ラクに終わった


