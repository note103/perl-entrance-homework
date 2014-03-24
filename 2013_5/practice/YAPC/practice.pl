#!/usr/bin/env perl
use strict;
use warnings;
use YAPC;

print YAPC::year()."\n";
print YAPC::month()."\n";
print YAPC::day()."\n";
print YAPC::is_yet('2016/03/23')."\n";
