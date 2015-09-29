name 'nano'
source_url "https://github.com/chef-brigade/#{name}-cookbook" if respond_to?(:source_url)
issues_url "https://github.com/chef-brigade/#{name}-cookbook/issues" if respond_to?(:issues_url)
maintainer 'Chef Brigade'
maintainer_email 'help@chefbrigade.io'
license 'Apache 2.0'
description 'Installs nano'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.3'

%w(debian ubuntu arch redhat centos fedora scientific oracle amazon).each do |os|
  supports os
end
