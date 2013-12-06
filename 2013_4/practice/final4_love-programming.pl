#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    if ($input =~ /python|ruby|perl/i) {
        print "Love Programming!\n";
    } elsif ($input eq 0) {
        last;
    }
}

__END__
while (chomp($input = <STDIN>)) {
    ...
}

    上記のコードは, 標準入力から入力された文字列を, ひたすら$inputに代入するコードである.
    このコードの...の部分を, 次の条件を満たすように書き換えてみよう.

4    文字列にperlないしrubyないしpythonが含まれる場合, ｢Love Programming!｣と表示する.
