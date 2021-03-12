# SpreeTranslations

Simple light weight translations pack for Spree, ask for more languages adding.

This extension uses [Translation.io](https://translation.io) to read and translate all of the default en.yml files from each of the following:

- rails-i18n
- spree_api
- spree_auth_devise
- spree_backend
- spree_core
- spree_dev_tools
- spree_extension
- spree_frontend
- spree_gateway

## Installation

1. Add this extension to your Gemfile with this line:

    ```ruby
    gem 'spree_translations'
    ```

2. Install the gem using Bundler

    ```ruby
    bundle install
    ```

3. Restart your server

  If your server was running, restart it so that it can find the assets properly.

This will then pull any changes you made online to the locale.yml files in this extension.

## Contributing

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.

Copyright (c) 2021 Matthew Kennedy, released under the New BSD License
