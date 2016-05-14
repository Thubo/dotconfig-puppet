hiera_include('classes')

class site::vcsrepos {

  $vcsrepos = hiera_hash('vcsrepos')
  create_resources (vcsrepo, $vcsrepos)

}

class site::symlinker {

  $symlinks = hiera_hash('symlinks')
  create_resources (file, $symlinks)

}

class site::vagrant_plugins {

  $vagrant_plugins = hiera_hash('vagrant_plugins')
  create_resources (vagrant::plugin, $vagrant_plugins)

}

class site::packages {

  $enhancers = hiera('enhancers')
  package { $enhancers: ensure => 'installed' }

}
