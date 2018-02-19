name 'nano'
maintainer 'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license 'Apache-2.0'
description 'Installs nano'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.3'

%w(debian ubuntu arch redhat centos fedora scientific oracle amazon suse opensuse opensuseleap).each do |os|
  supports os
end

source_url "https://github.com/sous-chefs/#{name}" if respond_to?(:source_url)
issues_url "https://github.com/sous-chefs/#{name}/issues" if respond_to?(:issues_url)
chef_version '>= 11.0' if respond_to?(:chef_version)
