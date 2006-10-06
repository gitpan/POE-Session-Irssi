#!/usr/bin/perl

use ExtUtils::MakeMaker;

sub MY::postamble {
   package MY;
   "\npredist: all\n" .
   "\t\$(MAKE) manifest\n" .
   "\t\$(MAKE) tardist\n"
}

WriteMakefile(
   MAKEFILE => 'Makefile',
   VERSION_FROM => 'lib/POE/Session/Irssi.pm',
   NAME => 'POE::Session::Irssi',
   PREREQ_PM => {
      'POE' => '0.31',
#      'Irssi' => '0.9',
      'POE::Loop::Glib' => '0.0023',
   },
   dist => {
      COMPRESS     =>'gzip',
      SUFFIX       =>'gz',
      DIST_DEFAULT => 'predist',
   },
);
