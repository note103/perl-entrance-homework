#!/usr/bin/env perl
use strict;
use warnings;

my @files = qw/papix.pl moznion.pm macopy.py boolfool.vim/;

sub map_bak {
	my @files2 = map $_.".bak", @files;
    print "@files2\n";
}

map_bak();
