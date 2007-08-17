use Module::Build;
Module::Build->new
(
        'module_name' => 'POE::Session::Irssi',
        'license' => 'gpl',
        'create_makefile_pl' => 'passthrough',
        'create_readme' => 1,
        'requires' =>
        {
                'POE'			=> '0.31',
#		'Irssi'			=> '0.9',
		'POE::Loop::Glib'	=> '0.0023',
		'Sub::Uplevel'		=> '0.14',
        }
)->create_build_script();

