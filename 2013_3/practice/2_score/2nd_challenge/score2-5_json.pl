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
for my $people (@people) {
    print "[\n\t{\n";
    for my $key (keys $people) {
        print "\t\t".'"'.$key.'":'.$people->{$key}."\n";
    }
    print "\t}\n]\n";
}




__END__

#2013/12/06 16:27:42スタート
#2013/12/06 16:53:10たぶんできた。

## 5. JSON風Dumper
    [
      {
        "python":10
        "binary":0
        "name":boolfool
        "ruby":20
        "perl":40
        "php":0
        "affiliation":namba.pm
        "sum":70
      }
      {
        "python":50
        "binary":0
        "name":papix
        "ruby":50
        "perl":60
        "php":0
        "affiliation":namba.pm
        "sum":160
      }
    ]

- どんな方法でもよいので上記のような JSON 風 Dumper を作成して下さい
