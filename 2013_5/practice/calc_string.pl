#!/usr/bin/env perl
use strict;
use warnings;

sub calc_string {
    my $str = shift;
    if ($str =~ /^(\d+)\s([\+\-\*\/\%])\s(\d+)$/) {
        if ($2 eq '+') {
            print $1 + $3."\n";
        } elsif ($2 eq '-') {
            print $1 - $3."\n";
        } elsif ($2 eq '*') {
            print $1 * $3."\n";
        } elsif ($2 eq '/') {
            print $1 / $3."\n";
        } elsif ($2 eq '%') {
            print $1 % $3."\n";
        }
    } else {
        print "undef\n";
    }
}
calc_string('5 + 6');
