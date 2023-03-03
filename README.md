# JunoRuby

> __Warning__
>
> ## Project discontinued as *Juno* removed the credit card payment function.
\
\
Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/juno_ruby`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'juno_ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install juno_ruby

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Using the juno_ruby script

Include in your `.bashrc`,` .zshrc`, or other:

```bash
export JUNO_RUBY_PATH=$HOME/workspace/juno_ruby/
source $JUNO_RUBY_PATH/bin/juno_ruby
```

#### Command list

| Command                   | Description                                                                                                  |
| ------------------------- | ------------------------------------------------------------------------------------------------------------ |
| juno_ruby                 | Acess project folder                                                                                         |
| juno_ruby cd              | Acess project folder                                                                                         |
| juno_ruby build           | Build docker image                                                                                           |
| juno_ruby install         | Install gems                                                                                                 |
| juno_ruby up              | Up container                                                                                                 |
| juno_ruby down            | Down container                                                                                               |
| juno_ruby ps              | Display container list                                                                                       |
| juno_ruby bash            | Open the bash of the container                                                                               |
| juno_ruby console         | Open irb with juno_ruby                                                                                      |
| juno_ruby test            | Run the tests                                                                                                |
| juno_ruby rubocop         | Run rubocop to check the code                                                                                |
| juno_ruby **command**     | Run the command against the running container.<br>If it is not running, start a temporary container and run. |
| juno_ruby run **command** | Start a temporary container and run the command.                                                             |

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/juno_ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
