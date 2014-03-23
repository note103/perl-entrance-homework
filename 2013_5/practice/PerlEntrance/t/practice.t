#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use PerlEntrance;

is PerlEntrance::tokyo(), 'moznion!!!', 'test_moznion_or_papix';

done_testing();
