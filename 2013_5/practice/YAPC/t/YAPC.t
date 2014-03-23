#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use YAPC;

is YAPC::year(), '2014', 'YAPC_year';
is YAPC::month(), '8', 'YAPC_month';
is YAPC::day(), '28-30', 'YAPC_day';
is YAPC::is_yet('2014/03/23'), 'true', 'YAPC_is_yet_before';
is YAPC::is_yet('2015/01/24'), 'false', 'YAPC_is_yet_after';
ok YAPC::is_yet(), 'YAPC_is_yet_ok';

done_testing();
