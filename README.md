# Checkmobi::SDK

This is Checkmobi Ruby Library
For additional examples, please see official documentation at [https://checkmobi.com/documentation.html#/overview](https://checkmobi.com/documentation.html#/overview) 

[![Code Climate](https://codeclimate.com/github/HEXA-UA/checkmobi-sdk/badges/gpa.svg)](https://codeclimate.com/github/HEXA-UA/checkmobi-sdk)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'checkmobi-sdk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install checkmobi-sdk

## Usage

For all properties accepted by the following methods check [https://checkmobi.com/documentation.html#/overview](https://checkmobi.com/documentation.html#/overview)

```ruby
require 'checkmobi'

client = Checkmobi::SDK::Client('secret key here')
api = Checkmobi::SDK::Api.new(client)

# get list of countries & flags
api.account_details

# get account details
api.account_details

# get prefixes
api.prefixes

# checking a number for being valid
response = api.check_number({ :number => '+number here' })

# validate a number using "Missed call method". (type can be : sms, ivr, cli, reverse_cli)
response = api.check_number({ :type => 'sms', :number => '+number here' })

# verify a pin for a certain request
response = api.verify_pin({ :id => "request id here", :pin => "5659" })

#check validation status for a certain request
response = api.validation_status('request id here');

# send a custom sms
response = api.send_sms({ :to => "number here", :text => "message here" });

# get details about an SMS
response = api.sms_details('sms id here');

# place a call
params = { :from => "+number here", :to => "+number here", :events => [{ :action => "speak", :text => "Hello world", :loop => 2, :language => "en-US" }] };
response = api.place_call(params);

# get a call details
response = api.call_details('call id here');

# hangup a call
response = api.hang_up_call('call id here');

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hexa-ua/checkmobi-sdk.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
