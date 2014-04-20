#!/usr/bin/env perl
use Mojolicious::Lite;

my @entries = ();
get '/' => sub {
  my $self = shift;
  $self->stash(entries => \@entries);
  $self->render('index');
};

post '/post' => sub {
  my $self = shift;
  my $name = $self->param('name_in');
  my $email = $self->param('mail_in');
  my $message = $self->param('body_in');
  if ($email eq 'age') {
      unshift @entries, {
          n => $name,
          m => $email,
          b => $message,
      };
    } else {
        push @entries, {
          n => $name,
          m => $email,
          b => $message,
      };
    }
  $self->render('post');
  $self->redirect_to('/');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title '入力フォーム';
%= form_for '/post' => method => 'POST' => begin
  %= text_field 'name_in'
  <br/>
  %= text_field 'mail_in'
  <br/>
  %= text_field 'body_in'
  <br/>
  %= submit_button '投稿する'
% end
% for my $entry (@{$entries}) {
    <p><%= $entry->{n} %></p>
    <p><%= $entry->{m} %></p>
    <p><%= $entry->{b} %></p>
    <hr>
% }

@@ post.html.ep
% layout 'default';
% title '出力';
%= form_for '/post' => method => 'POST' => begin
  %= text_field 'body'
  %= submit_button '投稿する'
% end
<br/>
<br/>
<a href="/">index</a>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
