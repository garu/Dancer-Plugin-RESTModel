use strict;
use warnings;
use Test::More tests => 7;
use Dancer qw( :syntax :tests );
use Dancer::Plugin::Model::REST;

set 'plugins' => {
  'Model::REST' => {
    'TestModel' => {
      server      => 'http://localhost',
      type        => 'application/json',
      clientattrs => {
        timeout => 5,
      },
    },
    'OtherModel' => {
      server => 'http://localhost:4004',
      type   => 'application/yaml',
    },
  }
};

ok my $model = model('TestModel') => 'got ourselves a model';

isa_ok $model => 'Dancer::Plugin::Model::REST';

ok my $other = model('TestModel') => 'got another model';

is $model, $other => 'same model, same var';

ok my $yet_another = model('OtherModel') => 'got yet another model';
isa_ok $yet_another => 'Dancer::Plugin::Model::REST';
isnt $model, $yet_another => 'Models are a-different';

