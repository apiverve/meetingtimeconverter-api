# Meeting Time Converter API - Ruby Gem

Meeting Time Converter transforms meeting times between any two timezones, calculating time differences and UTC offsets for global coordination.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_meetingtimeconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_meetingtimeconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_meetingtimeconverter'

# Initialize the client
client = APIVerve::Meetingtimeconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  time: "14:30",
  fromTimezone: "America/New_York",
  toTimezone: "Europe/London",
  date: "2024-03-15"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ time: "14:30", fromTimezone: "America/New_York", toTimezone: "Europe/London", date: "2024-03-15" })
  puts response["data"]
rescue APIVerve::Meetingtimeconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Meetingtimeconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Meetingtimeconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "originalTime": "14:30",
    "convertedTime": "19:30:00",
    "date": "2026-09-18",
    "fromTimezone": "America/New_York",
    "toTimezone": "Europe/London",
    "timeDifference": 5,
    "fromOffset": "-04:00",
    "toOffset": "+01:00"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/meetingtimeconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/meetingtimeconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/meetingtimeconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
