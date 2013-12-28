#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use YAPC;

is YAPC::year(), 2014;
is YAPC::month(), 8;
is YAPC::day(), 28;
ok YAPC::is_yet('2014/12/27');
ok !YAPC::is_yet('2013/12/27');

done_testing();


