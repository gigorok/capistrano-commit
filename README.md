# capistrano-commit

Save information about deployed revisions into database.

Each time after deploying of your application through capistrano (3+) - [host, revision, timestamps] will be stored
into table capistrano_commits.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-commit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-commit

## Usage

Add below to Capfile:

    require 'capistrano/commit/caps'

and to deploy.rb:

    after 'deploy:publishing', 'deploy:commit:save'

## TODO

1. Current version control branch
2. Config files

## Contributing

1. Fork it ( https://github.com/gigorok/capistrano-commit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
