#!/usr/bin/env perl
use strict;
use warnings;

#2013/11/26
#第3問のfactorial.plという問題
#開始 15:42
#完了 16:14
#感想 かなりかかった・・

my $num = <STDIN>;
chomp $num;

my $fac = 1;
while ($num > 0) {
    $fac = $fac * $num;
    $num = $num -1;
}

print "$fac\n";

__END__

#模範回答

print "??? ";
my $input = <STDIN>;
chomp $input;

my $result = 1;
for my $number ( 1 .. $input ) {
    $result *= $number;
}

print "$result\n";
