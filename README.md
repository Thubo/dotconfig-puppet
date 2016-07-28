```
# apt install git puppet

# rm -rf /etc/puppet/*

# cd /etc/puppet/

# git clone https://github.com/Thubo/dotconfig-puppet.git .

# gem install --no-rdoc --no-ri librarian-puppet

# librarian-puppet install --verbose

# puppet apply --pluginsync --hiera_config /etc/puppet/hiera.yaml --modulepath=/etc/puppet/modules/ /etc/puppet/manifests/site.pp
```
