# Meeting Time Converter API - PHP Package

Meeting Time Converter transforms meeting times between any two timezones, calculating time differences and UTC offsets for global coordination.

## Installation

Install via Composer:

```bash
composer require apiverve/meetingtimeconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Meetingtimeconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'time' => '14:30',
    'fromTimezone' => 'America/New_York',
    'toTimezone' => 'Europe/London',
    'date' => '2024-03-15'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Meetingtimeconverter\Client;
use APIVerve\Meetingtimeconverter\Exceptions\APIException;
use APIVerve\Meetingtimeconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['time' => '14:30', 'fromTimezone' => 'America/New_York', 'toTimezone' => 'Europe/London', 'date' => '2024-03-15']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "originalTime": "14:30",
    "convertedTime": "14:30:00",
    "fromTimezone": "America/New_York",
    "toTimezone": "Europe/London",
    "timeDifference": 5,
    "fromOffset": "-05:00",
    "toOffset": "+00:00"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/meetingtimeconverter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/meetingtimeconverter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/meetingtimeconverter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
