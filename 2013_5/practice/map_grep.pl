#!/usr/bin/env perl
use strict;
use warnings;


my @files = qw/papix.pl moznion.pm macopy.py boolfool.vim/;


sub map_bak {
    my @files2 = map {$_ ."\.bak";} @files;
    return "@files2";
}
print map_bak()."\n";


sub grep_pl_or_pm {
	my @files3 = grep {$_ =~ /(.+)\.p[ml]/;} @files;
    #my @files3 = grep {$_ =~ /(.+)\.p(m|l)/;} @files; #これでも行ける
    return "@files3";
}
print grep_pl_or_pm()."\n";

#複数行のときは{}内に;必要だが、1つの場合は;なくても大丈夫
#mapは写像。grepはフィルタリング。それ以外の要素ならforを使った方がいい
