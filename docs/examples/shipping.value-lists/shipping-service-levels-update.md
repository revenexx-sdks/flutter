```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingValueLists shippingValueLists = ShippingValueLists(client);

Error result = await shippingValueLists.shippingServiceLevelsUpdate(
    id: '',
    description: 'When to pick this service level.', // optional
    descriptions: {
        "de": "Wann diese Option zu w\u00e4hlen ist.",
        "en": "When to pick this service level."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Night courier",
        "en": "Night courier"
    }, // optional
    position: 1, // optional
    title: 'Night courier', // optional
    tone: enums.Tone.neutral, // optional
);
```
