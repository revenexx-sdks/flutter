```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersValueLists customersValueLists = CustomersValueLists(client);

Error result = await customersValueLists.customersAddressTypesUpdate(
    id: '',
    description: 'Where the goods go.', // optional
    descriptions: {
        "de": "Wohin die Ware geliefert wird.",
        "en": "Where the goods go."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Lieferadresse",
        "en": "Shipping address"
    }, // optional
    position: 1, // optional
    title: 'Shipping address', // optional
    tone: enums.Tone.neutral, // optional
);
```
