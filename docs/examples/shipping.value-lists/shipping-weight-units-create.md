```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingValueLists shippingValueLists = ShippingValueLists(client);

Error result = await shippingValueLists.shippingWeightUnitsCreate(
    code: 't',
    factor: 1000,
    title: 'Tonne',
    description: 'When to pick this weight unit.', // optional
    descriptions: {
        "de": "Wann diese Option zu w\u00e4hlen ist.",
        "en": "When to pick this weight unit."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Tonne",
        "en": "Tonne"
    }, // optional
    position: 1, // optional
    tone: enums.Tone.neutral, // optional
);
```
