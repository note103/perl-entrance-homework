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

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
Welcome to the Mojolicious real-time web framework!

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.
</body>
</html>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
