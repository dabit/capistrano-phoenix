# Capistrano::Phoenix

Deploy Phoenix applications with Capistrano.

## Phoenix specific options

```ruby
set :mix_env, "production"
```


## Instalation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-phoenix'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-phoenix

## Usage

Require in your `Capfile`

```ruby
require "capistrano-phoenix"
```

Please note that any require should be placed in Capfile, not config/deploy.rb.

## Symlinks

You'll probably want to symlink Phoenix shared files and directories like:

```
# deploy.rb
set :linked_files, fetch(:linked_files, []).push('config/prod.secret.exs')
set :linked_dirs, fetch(:linked_dirs, []).
    push('deps', 'node_modules', 'rel', '_build', 'priv/static/css', 'priv/static/js')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-phoenix/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
