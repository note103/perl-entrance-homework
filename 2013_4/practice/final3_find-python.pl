#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    if ($input =~ /python/i) {
        print "Find Python!\n";
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

3    文字列に大文字小文字問わず, pythonの文字列が含まれる場合, ｢Find Python!｣と表示する.
