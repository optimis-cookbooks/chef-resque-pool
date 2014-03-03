maintainer        'OptimisCorp., Inc.'
maintainer_email  'ops+cookbooks@optimiscorp.com'

license           'Apache 2.0'

description       'A cookbook to help monitor and restart resque-pool using monit.'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version           '0.0.1'

recipe            'resque-pool::default', 'Adds monit configuration for resque-pool.'

%w{redhat centos scientific fedora debian ubuntu arch freebsd amazon}.each do |os|
  supports os
end

depends 'monit'

attribute 'applications',
  :display_name => 'An array of applications to monitor.',
  :description => 'An array of applications to mmonitor.',
  :type => 'array'
