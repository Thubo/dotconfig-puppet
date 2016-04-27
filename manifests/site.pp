hiera_include('classes')

class site::vcsrepos {

  $vcsrepos = hiera_hash('vcsrepos')
  create_resources (vcsrepo, $vcsrepos)

}

class site::symlinker {

  $symlinks = hiera_hash('symlinks')
  create_resources (file, $symlinks)

}
