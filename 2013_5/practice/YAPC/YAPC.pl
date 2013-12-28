#!/usr/bin/env perl
use strict;
use warnings;
use YAPC;

print "Year: ".YAPC::year()."\n";
print "Month: ".YAPC::month()."\n";
print "Day: ".YAPC::day()."\n";
print "True or False(0): ".YAPC::is_yet('2010/2/27')."\n";
