use Test::More tests => 5;
use Dancer::Plugin::Model::REST;

my $client = Dancer::Plugin::Model::REST->new(
    server => 'http://localhost:5000',
    type   => 'application/json',
);

ok $client, 'Created REST client instance';
isa_ok $client => 'Dancer::Plugin::Model::REST';
can_ok $client, qw( get post put delete options head );
ok my $res = $client->get('/test'), 'get OK';
isa_ok $res, 'Role::REST::Client::Response';
