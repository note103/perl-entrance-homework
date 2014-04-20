#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $self = shift;
  $self->stash(
      title => 'practice!',
  );
  $self->render('index');
};

get '/profile' => sub {
  my $self = shift;
  $self->stash(
      name => 'Hiroaki Kadomatsu',
      language => 'Perl, PHP',
      hobby => 'Programming',
  );
  $self->render('profile');
};

get '/gfzbz' => sub {
  my $self = shift;

  my @gfzbz = ();
  for my $fzbz (1..100) {
      if ($fzbz % 15 == 0) {
         push @gfzbz, 'FizzBuzz';
      } elsif ($fzbz % 3 == 0) {
         push @gfzbz, 'Fizz';
      } elsif ($fzbz % 5 == 0) {
         push @gfzbz, 'Buzz';
      } else {
         push @gfzbz, $fzbz;
      }
  }

  $self->stash(
      name => 'Good!! FizzBuzz!!!',
      gfzbz => \@gfzbz,
  );
  $self->render('good_fizzbuzz');
};

get '/fizzbuzz' => sub {
  my $self = shift;
  $self->stash(
      name => 'FizzBuzz!!',
  );
  $self->render('fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
<a href="/profile.html">profile</a>
<br/>
<br/>
<a href="/gfzbz">good_fizzbuzz</a>
<br/>
<br/>
<a href="/fzbz">fizzbuzz</a>

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.
</body>
</html>

@@ good_fizzbuzz.html.ep
<html>
<head><title><%= $name %>のページ</title></head>
<body style='padding: 30px;'>
% for my $output (@$gfzbz) {
%=   $output
<br>
% }
</body>
</html>

@@ fizzbuzz.html.ep
<html>
<head><title><%= $name %>のページ</title></head>
<body style='padding: 30px;'>
% for my $fzbz (1..100) {
%     if ($fzbz % 15 == 0) {
         FizzBuzz
         <br/>
%     } elsif ($fzbz % 3 == 0) {
         Fizz
         <br/>
%     } elsif ($fzbz % 5 == 0) {
         Buzz
         <br/>
%     } else {
%=         $fzbz
         <br/>
%     }
% }
</body>
</html>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
