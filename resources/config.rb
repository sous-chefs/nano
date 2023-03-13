unified_mode true

property :syntax_name,    String, name_property: true
property :filename_regex, String, required: true
property :colour,         Hash,   default: {}
property :options,        Hash,   default: {}
property :config_directory, String, default: '/etc/nanorc.d'
property :config_file,    String, default: '/etc/nanorc'
property :cookbook,       String, default: 'nano'
property :source,         String, default: 'nanorc_conf.erb'

action :create do
  file_name = ::File.join(new_resource.config_directory, "#{new_resource.syntax_name}.nanorc")

  directory new_resource.config_directory

  with_run_context :root do
    edit_resource(:template, new_resource.config_file) do |new_resource|
      node.run_state['nano'] ||= { 'conf_template_source' => {}, 'conf_cookbook' => {} }
      source 'nanorc.erb'
      cookbook lazy { node.run_state['nano']['conf_cookbook'][new_resource.cookbook] ||= 'nano' }
      variables['global'] ||= {}
      variables['global']['nano'] ||= {}
      variables['global']['nano']['rcfiles'] ||= {}
      variables['global']['nano']['rcfiles'][new_resource.syntax_name] ||= file_name
      action :nothing
      delayed_action :create
    end
  end

  template file_name do
    source    new_resource.source
    cookbook  new_resource.cookbook
    variables(
      syntax_name: new_resource.syntax_name,
      filename_regex: new_resource.filename_regex,
      colour: new_resource.colour,
      options: new_resource.options
    )
  end
end

action :delete do
  file file_name do
    action :delete
  end
end
