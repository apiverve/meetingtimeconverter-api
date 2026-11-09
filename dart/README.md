# Meeting Time Converter API - Dart/Flutter Client

Meeting Time Converter transforms meeting times between any two timezones, calculating time differences and UTC offsets for global coordination.

[![pub package](https://img.shields.io/pub/v/apiverve_meetingtimeconverter.svg)](https://pub.dev/packages/apiverve_meetingtimeconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Meeting Time Converter API](https://apiverve.com/marketplace/meetingtimeconverter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_meetingtimeconverter: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_meetingtimeconverter/apiverve_meetingtimeconverter.dart';

void main() async {
  final client = MeetingtimeconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'time': '14:30',
      'fromTimezone': 'America/New_York',
      'toTimezone': 'Europe/London',
      'date': '2024-03-15'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Meeting Time Converter API](https://apiverve.com/marketplace/meetingtimeconverter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/meetingtimeconverter](https://docs.apiverve.com/ref/meetingtimeconverter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
