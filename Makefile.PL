use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Dancer::Plugin::RESTModel',
    AUTHOR              => 'Breno G. de Oliveira <garu@cpan.org>',
    VERSION_FROM        => 'lib/Dancer/Plugin/RESTModel.pm',
    ABSTRACT_FROM       => 'lib/Dancer/Plugin/RESTModel.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'         => '0.88',
        'Dancer'             => 0,
        'Role::REST::Client' => 0,
        'Moose'              => 0,
    },
    META_MERGE      => {
        resources => {
            license     => 'http://dev.perl.org/licenses/',
            bugtracker  => 'https://github.com/garu/Dancer-Plugin-RESTModel/issues'
            repository  => 'https://github.com/garu/Dancer-Plugin-RESTModel',
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Dancer-Plugin-RESTModel-*' },
);
