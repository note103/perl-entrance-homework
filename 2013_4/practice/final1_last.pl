#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    if ($input eq 0) {
    last;
    }
}

__END__
while (chomp($input = <STDIN>)) {
    ...
}

    上記のコードは, 標準入力から入力された文字列を, ひたすら$inputに代入するコードである.
    このコードの...の部分を, 次の条件を満たすように書き換えてみよう.

1    文字列が0の場合, ループを抜ける(lastを使って...).
#issue: $inputにmyが定義されてない

