# UCA API Gem

* [Homepage](https://github.com/psyomn/powertab_api#readme)
* [Issues](https://github.com/psyomn/powertab_api/issues)
* [Documentation](http://rubydoc.info/gems/powertab_api/frames)
* [Email](mailto:lethaljellybean at gmail.com)

## Installing

    rake install

## Description

Only supports the UCA API.

You can use this gem programmatically.

You need a UCA API key in order to use this gem. There's two ways you can go
about this. You can:

* prepend environment variables in the following form: `UCA_API_KEY=key uca_api
  --songs pattern`

* store your key in the following file: `$HOME/.config/uca_api/key`

Example commands:

    uca_api --songs love

    uca_api --artists blackwater

