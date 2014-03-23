#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use PerlBeginners;

ok PerlBeginners::perllevel(1);
ok PerlBeginners::perllevel(2);
ok PerlBeginners::perllevel(3);
ok PerlBeginners::perllevel(4);
ok PerlBeginners::perllevel(5);
ok PerlBeginners::perllevel(6);
ok PerlBeginners::perllevel(7);
ok PerlBeginners::perllevel(8);
ok PerlBeginners::perllevel(9);
ok PerlBeginners::perllevel(10);

done_testing();
