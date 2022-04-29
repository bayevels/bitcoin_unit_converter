# BitcoinUnitConverter

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/bitcoin_unit_converter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bitcoin_unit_converter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install bitcoin_unit_converter

## Usage
### Convert from unit to unit
```ruby
# BitcoinUnitConverter.convert(amount, unit = 'sat', to_unit = 'btc')
BitcoinUnitConverter.convert(100_000_000, 'sat', 'btc') # '1'
BitcoinUnitConverter.convert(1, 'sat', 'btc') # '0.00000001'
BitcoinUnitConverter.convert(1, 'btc', 'uBTC') # '1000000'
```
### Supported Units
```ruby
  UNITS = {
    'sat': 1,
    'Satoshi': 1,
    'uBTC': 100, # MicroBit
    'ubtc': 100, # MicroBit
    'mBTC': 100_000, # Milibit
    'mbtc': 100_000, # Milibit
    'cBTC': 1_000_000, # Bitcent
    'cbtc': 1_000_000, # Bitcent
    'dBTC': 10_000_000, # deciBitcoin
    'dbtc': 10_000_000, # deciBitcoin
    'BTC': 100_000_000,
    'btc': 100_000_000,
    'daBTC': 10_000_000, # decaBitcoin
    'dabtc': 1_000_000_000 # decaBitcoin
  }
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bitcoin_unit_converter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
