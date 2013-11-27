#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

#calc.plで作成した関数における引数が数字であるかどうか正規表現を使って判定するように改良してください.
#数値以外が引数であった場合は undef を返すようにしてください.

sub calc {
    my ($num1, $num2) = @_;
    if ($num1 =~ /\D/ || $num2 =~ /\D/) {
        return "undef\n";
    } else {
        my $add = $num1 + $num2;
        my $sub = $num1 - $num2;
        my $mul = $num1 * $num2;
        my $div = $num1 / $num2;
        my $mod = $num1 % $num2;
        my $results = {
            add => "$add",
            sub => "$sub",
            mul => "$mul",
            div => "$div",
            mod => "$mod",
        };
        return $results; 
    }
}

my $var = calc(14, 3); #両方数字
my $hoge = calc('str', 3); #前者が文字列
my $foo = calc(14, 'str'); #後者が文字列
my $piyo = calc('str1', 'str2'); #両方文字列

print Dumper $var;
print Dumper $hoge;
print Dumper $foo;
print Dumper $piyo;


__END__
出力結果
$VAR1 = {
          'div' => '4.66666666666667',
          'sub' => '11',
          'add' => '17',
          'mul' => '42',
          'mod' => '2'
        };
$VAR1 = 'undef
';
$VAR1 = 'undef
';
$VAR1 = 'undef
';

