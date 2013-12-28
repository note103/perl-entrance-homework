package YAPC;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

sub year {
    return 2014;
}
sub month {
    return 8;
}
sub day {
    return 28;
}
sub is_yet {
    my $str = shift;
    if ($str =~ /(\d\d\d\d)\/(\d\d?)\/(\d\d?)/) {
        if ($1 > 2014) {
            return 'true';
        } elsif ($1 == 2014 && $2 > 8) {
            return 'true';
        } elsif ($1 == 2014 && $2 == 8 && $3 > 27) {
            return 'true';
        } else {
            return 'false';
        }
    }
}

1;
__END__

=encoding utf-8

=head1 NAME

YAPC - It's new $module

=head1 SYNOPSIS

    use YAPC;

=head1 DESCRIPTION

YAPC is ...

=head1 LICENSE

Copyright (C) Hiroaki Kadomatsu.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hiroaki Kadomatsu E<lt>note103@gmail.comE<gt>

=cut

