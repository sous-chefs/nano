nano_install 'nano' do
end

colour = {}
options = {}

colour['yellow'] = '\\<(BEGIN|END|alias|and|begin|break|case|class|def|defined\\?|do|else|elsif|end|ensure|false|for|if|in|module|next|nil|not|or|redo|rescue|retry|return|self|super|then|true|undef|unless|until|when|while|yield)\\>'
options['header'] = '"^#!.*/(env +)?ruby( |$)"'

nano_config 'ruby' do
  filename_regex '"\\.rb$" "Gemfile" "config.ru" "Rakefile" "Capfile" "Vagrantfile"'
  colour colour
  options options
end
