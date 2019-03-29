name              'nano'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Installs and configures nano'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '2.0.0'
source_url        "https://github.com/sous-chefs/#{name}"
issues_url        "https://github.com/sous-chefs/#{name}/issues"
chef_version      '>= 13.0'

%w(debian ubuntu arch redhat centos fedora scientific oracle amazon suse opensuse opensuseleap).each do |os|
  supports os
end
