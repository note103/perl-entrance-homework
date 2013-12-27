#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;
use PerlEntrance;

is PerlEntrance::tokyo(), 'moznion!!!';

done_testing();
