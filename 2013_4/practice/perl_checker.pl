#!/usr/bin/env perl
use strict;
use warnings;

#引数として文字列を受け取り, その文字列にperlないしPerlが含まれるなら｢Perl Monger!｣と表示するサブルーチンperl_checkerを書いてみましょう.

sub perl_checker {
    my $str = shift;
    if ($str =~ /perl/) {
    print "Perl Monger!\n";
    } else {
    print "NG\n";
    }
}

perl_checker('pearl');
perl_checker('perl');
