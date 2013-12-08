name    'splunkforwarder'
version '2.0.1'

description 'Installs & Configures Splunk Forwarder to a Linux Client'

maintainer 'Ken Miles'
maintainer_email 'ken.miles@hp.com'
license 'Apache License 2.0'


%w{redhat rhel centos fedora debian suse ubuntu}.each do |os|
  supports os
end


long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
