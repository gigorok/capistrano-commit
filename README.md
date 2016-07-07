# capistrano-commit

Save information about deployed revisions into database.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-commit', require: false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-commit

## Usage

Add below to Capfile:

    require 'capistrano/commit/caps'

and to deploy.rb:

    after 'deploy:publishing', 'capistrano:commit:save'


## Contributing

1. Fork it ( https://github.com/gigorok/capistrano-commit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
