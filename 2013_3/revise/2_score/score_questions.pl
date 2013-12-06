#!/usr/bin/env perl

use strict;
use warnings;

my $papix = {
    name        => 'papix',
    affiliation => 'namba.pm',
    perl        => 60,
    python      => 50,
    ruby        => 50,
    php         => 80,
    binary      => 30,
};
my $boolfool = {
    name        => 'boolfool',
    affiliation => 'namba.pm',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 10,
};
my $moznion = {
    name        => 'moznion',
    affiliation => 'hachioji.pm',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $binarian = {
    name        => 'binarian',
    affiliation => 'hachioji.pm',
    perl        => 10,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $uzulla = {
    name        => 'uzulla',
    affiliation => 'hachioji.pm',
    perl        => 1,
    python      => 0.01,
    ruby        => 0.5,
    php         => 4,
    binary      => 0.01,
};


__END__

## 1. 点数の合計
- それぞれの人物の`perl`、`ruby`、`python` ... といった分野毎の合計値をそれぞれのリファレンスに追加しましょう
- `@people` や `@languages` と言った変数に各々のリファレンスや言語などを格納しておくとやりやすいでしょう

## 2. 言語毎の平均
- 新たに`$average`といったハッシュリファレンスに各々の人物の名前を key として、 `perl`、`ruby`、`python`の平均値を格納してください
- 出力には `Data::Dumper` などを使って表示させてください

## 3. 五段階評価
     0 - 19 =>
    20 - 39 => ★
    40 - 59 => ★★
    60 - 79 => ★★★
    80 - 99 => ★★★★
    100     => ★★★★★
    ----
    boolfool:
    perl: ★★
    python:
    ruby: ★
    php:
    binary:

- それぞれの人物の言語毎の成績を上記を参考に5段階表示して出力して下さい
- 全角文字を出力するので冒頭に`binmode STDOUT, ":utf8";`と書いておくとよいでしょう

## 4. 所属毎の perl のスコアが 60 以上の人の名前を格納する
- `$highscore` と言ったハッシュリファレンスを用意し、所属毎に優秀な人物の名前を push して下さい
- `$highscore`における key を所属として配列のリファレンスにするのがいいですね

## 5. JSON風Dumper
    [
      {
        "python":10
        "binary":0
        "name":boolfool
        "ruby":20
        "perl":40
        "php":0
        "affiliation":namba.pm
        "sum":70
      }
      {
        "python":50
        "binary":0
        "name":papix
        "ruby":50
        "perl":60
        "php":0
        "affiliation":namba.pm
        "sum":160
      }
    ]

- どんな方法でもよいので上記のような JSON 風 Dumper を作成して下さい
