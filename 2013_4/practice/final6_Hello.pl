#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    if ($input =~ /Hello\s(.+)/) {
        print "Hello! $1!\n";
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

6    文字列にHelloが含まれる場合, その後に続く単語xxxxを使って｢Hello! xxxx!｣と表示する.
        例えば, 文字列に｢Hello moznion｣が含まれる場合, ｢Hello! moznion!｣と表示すればOKです.
    
