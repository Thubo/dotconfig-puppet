```
# apt install git puppet

# rm -rf /etc/puppet/*

# cd /etc/puppet/

# git clone https://github.com/Thubo/dotconfig-puppet.git .

# gem install librarian-puppet

# librarian-puppet install

# puppet apply -t --pluginsync --hiera_config /etc/puppet/hiera.yaml --modulepath=/etc/puppet/modules/ /etc/puppet/manifests/site.pp
```
