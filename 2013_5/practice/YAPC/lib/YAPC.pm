#!/usr/bin/env perl
use strict;
use warnings;

package YAPC {
    sub year {
        return '2014';
    }

    sub month {
        return '8';
    }

    sub day {
        return '28-30';
    }

    sub is_yet {
        my $str = shift;
        if (defined $str) {
            if ($str =~ /(\d{4})\/(\d{2})\/(\d{2})/) {
                if ($1 < 2014) {
                    return 'true';
                } elsif ($1 == 2014 && $2 < 8) {
                    return 'true';
                } elsif ($1 == 2014 && $2 == 8 && $3 <= 28) {
                    return 'true';
                } else {
                    return 'false';
                }
            } else {
                return 'false';
            }
        } else {
            return 'false';
        }
    }
}

1;
