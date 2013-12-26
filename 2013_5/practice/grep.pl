#!/usr/bin/env perl
use strict;
use warnings;

my @files = qw/papix.pl moznion.pm macopy.py boolfool.vim/;

sub grep_pl_and_pm {
	my @files2 = grep $_ =~ /(.+)\.p[ml]/, @files;
    print "@files2\n";
}

grep_pl_and_pm();
