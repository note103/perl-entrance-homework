#!/usr/bin/env perl
use strict;
use warnings;
use YAPC;

print "Year is ".YAPC::year()."\n";
print "Month is ".YAPC::month()."\n";
print "Day is ".YAPC::day()."\n";
print "True or False(0) is ".YAPC::is_yet('2010/2/27')."\n";
