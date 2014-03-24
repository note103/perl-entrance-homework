#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use YAPC;

is YAPC::year(), 2014, 'YAPC_year';
is YAPC::month(), 8, 'YAPC_month';
is YAPC::day(), 28, 'YAPC_day';
ok YAPC::is_yet('2014/03/23'), 'YAPC_is_yet_ok';
ok !YAPC::is_yet('2016/04/23'), 'YAPC_is_yet_not_ok';

done_testing();
