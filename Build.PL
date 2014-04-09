use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'USAGEPOD',
    license             => 'bsd',
    dist_author         => q{Wolfgang Gerlach <mail@wolfgang-gerlach.com>},
    dist_version_from   => 'lib/USAGEPOD.pm',
    dist_abstract       => 'something',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ 'USAGEPOD-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
