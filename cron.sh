/usr/bin/logger "Starting local puppet cron job."

/usr/bin/logger "Installing modules with librarian-puppet."
librarian-puppet install --verbose

/usr/bin/logger "Starting local puppet apply."
puppet apply -t --pluginsync --hiera_config /etc/puppet/hiera.yaml --modulepath=/etc/puppet/modules/ /etc/puppet/manifests/site.pp

/usr/bin/logger "Done with local puppet cron job."

