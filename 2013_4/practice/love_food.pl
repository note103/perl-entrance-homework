#!/usr/bin/env perl
use strict;
use warnings;

sub love_food {
    my $str = shift;
    for my $str2 (@$str) {
        if ($str2 =~ /(.+)\sloves\s(.+)!/) {
            print "$1 -> $2\n";
       }
    }
}

my @foods = (
    'papix loves meat!',
    'moznion loves sushi!',
    'boolfool loves water!',
    'uzulla loves egg!',
);
my $foods = \@foods;

love_food($foods);

__END__
my @words = (
    'papix loves meat!',
    'moznion loves sushi!',
);

    このような配列のリファレンスを受け取り, リファレンスに格納された文字列について, ｢loves｣の後に記述されている好きな食べ物の単語を正規表現で取得し, ｢papix -> meat｣, ｢moznion -> sushi｣のように表示するサブルーチン, love_foodを書いてみよう.

