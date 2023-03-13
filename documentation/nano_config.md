# nano_config

[back to resource list](https://github.com/sous-chefs/nano#resources)

Configures the nanorc files at a global level

For reference and ideas: [nanorc by scopatz](https://github.com/scopatz/nanorc)

Introduced: v2.0.0

## Actions

- `:create`
- `:delete`

## Properties

| Name                  | Type        |  Default            | Description                                               | Allowed Values
| --------------------- | ----------- | ------------------- | --------------------------------------------------------- | --------------- |
| `syntax_name`         | String      |                     | Name Property, Name of the config file to create          |
| `filename_regex`      | String      | `/etc/default`      | Regex of file names to match                              | Valid directory
| `colour`              | Hash        | `{}`                | Colour groups for mating regex                            |
| `options`             | Hash        | `{}`                | Additional options                                        |
| `config_directory`    | String      | `/etc/nanorc.d`     | The directory where the nano configuration files reside   | Valid directory
| `config_file`         | String      | `/etc/nanorc`       | The nano configuration file                               | Valid file path
| `cookbook`            | String      | `nano`              | Which cookbook to look in for the template                |
| `source`              | String      | `nanorc_conf.erb`   | Name of the template                                      |

## Examples

```ruby
nano_config 'ruby' do
  filename_regex '"\\.rb$" "Gemfile" "config.ru" "Rakefile" "Capfile" "Vagrantfile"'
  colour {
    yellow: '\\<(BEGIN|END|alias|and|begin|break|case|class|def|defined\\?|do|else|elsif|end|ensure|false|for|if|in|module|next|nil|not|or|redo|rescue|retry|return|self|super|then|true|undef|unless|until|when|while|yield)\\>'
  }
  options {
    header: '"^#!.*/(env +)?ruby( |$)"'
  }
end
```
