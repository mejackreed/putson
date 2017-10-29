# Putson

A quick Ruby interface to put some JSON somewhere. Integrated first with [myjson](http://myjson.com/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'putson'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install putson

## Usage

Create an instance
```ruby
> putson = Putson::Client.new
=> #<Putson::Client:0x007f927b06ae40 @id=nil>
```

Post some data
```ruby
# Data can be JSON (as a string). Or another object that responds to `to_json`.
> putson.post({yo: 'lo'})
=> "lwdaz"
```

Get some data
```ruby
> putson.get
=> "{\"yo\":\"lo\"}"
# You can also get data from another id
> putson.get('abc123')
=> "another response"
```

Update some data
```ruby
> putson.put({yo: 'no'})
=> "lwdaz"
> putson.get
=> "{\"yo\":\"no\"}"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mejackreed/putson.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
