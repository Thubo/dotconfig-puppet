hiera_include('classes')


$packages        = hiera('site::packages',[])
$symlinks        = hiera('symlinks',{})
$vagrant_plugins = hiera('vagrant_plugins',{})
$vcsrepos        = hiera('vcsrepos',{})

package { $packages: ensure => 'installed' }

create_resources (vcsrepo, $vcsrepos)
create_resources (file, $symlinks)
create_resources (vagrant::plugin, $vagrant_plugins)
