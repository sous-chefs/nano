unified_mode true

property :package_name, String, name_property: true

action :install do
  package new_resource.package_name do
    action :install
  end
end

action :remove do
  package new_resource.package_name do
    action :remove
  end
end
