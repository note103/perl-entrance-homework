#!/usr/bin/env perl
use strict;
use warnings;

#第2問のsum.plという問題
#けっこう時間かかった・・2013/11/26 15:40:25

my @array = (1..100);
my $sum;

for my $array (@array) {
    $sum += $array;
}

print "$sum\n";

__END__

#模範回答

my @numbers = ( 1 .. 100 );
my $result = 0;

for my $number ( @numbers ) {
    $result += $number;
}

print "$result\n";
