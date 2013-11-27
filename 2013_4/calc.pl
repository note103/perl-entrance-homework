#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

#2013/11/27 17:59:21
#Perl入学式、2013年#4の復習問題1問目
#https://github.com/perl-entrance-org/workshop-2013-04/blob/master/practice.md

sub calc {
    my ($num1, $num2) = @_;
    my $add = $num1 + $num2;
    my $sub = $num1 - $num2;
    my $mul = $num1 * $num2;
    my $div = $num1 / $num2;
    my $mod = $num1 % $num2;
    my $results = {
        add => "$add",
        sub => "$sub",
        mul => "$mul",
        div => "$div",
        mod => "$mod",
    };
    return $results;
}

my $var = calc(6, 3);
print Dumper $var;

__END__

出力結果
$VAR1 = {
          'div' => '2',
          'sub' => '3',
          'add' => '9',
          'mul' => '18',
          'mod' => '0'
        };

