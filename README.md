# RspecMultiEnv

If you're using RSpec as your technology for testing an app in
multiple environments, you'll likely need a uniform way to configure
the environment specific variable within your tests. This gem
simplifies the process with a DSL.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_multi_env'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_multi_env

## Usage

```ruby
RspecMultiEnv.setup do |env|
  env.when :sandboxed do
    #... custom code/configuration
  end

  env.when :staging do
    #... custom code/configuration
  end
end

describe 'Your Test' do
  # rest of your tests that use the env specific config
end
```

```bash
$ RSPEC_ENV=sandboxed bin/rspec
$ RSPEC_ENV=staging bin/rspec
```

## Features

1. Works with parallel_tests, just pass the same `RSPEC_ENV`
   variable.
2. If an environment is missing in a spec, the tests are marked pending
   when the suite is executed.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smsohan/rspec_multi_env. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RspecMultiEnv project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rspec_multi_env/blob/master/CODE_OF_CONDUCT.md).
