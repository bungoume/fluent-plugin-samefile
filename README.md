# Fluent-plugin-samefile

[Fluentd](http://fluentd.org) filter plugin to output same file.


## Installation

```bash
# for fluentd
$ gem install fluent-plugin-samefile

# for td-agent2
$ sudo td-agent-gem install fluent-plugin-samefile
```


## Usage

```xml
<match pattern>
  type samefile
  path /var/log/fluent/myapp.log
</match>
```


## TODO

* patches welcome!


## Contributing

1. Fork it ( https://github.com/bungoume/fluent-plugin-samefile/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## Copyright

Copyright (c) 2015 Yuri Umezaki


## License

Apache License, Version 2.0
