#!/usr/bin/env perl
#use strict;
#use warnings;

#2013/11/26 23:52:58

my $str = <STDIN>;

if ($str % 2 == 0) {
    print "even\n";
} else {
    print "odd\n";
}

__END__

#模範回答

print "??? ";
my $input = <STDIN>;
chomp $input;

if ( $input % 2 == 0 ) {
    print "even\n";
}
else {
    print "odd\n";
}

