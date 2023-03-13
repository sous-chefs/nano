# nano_install

[back to resource list](https://github.com/sous-chefs/nano#resources)

Installs nano from the repositories

## Actions

- `:install`
- `:remove`

## Properties

| Name                  | Type        |  Default      | Description                         | Allowed Values
| --------------------- | ----------- | ------------- | ----------------------------------- | --------------- |
| `package_name`        |  String     |               | Name property, always set to `nano` |

## Examples

```ruby
nano_install 'nano' do
end
```
