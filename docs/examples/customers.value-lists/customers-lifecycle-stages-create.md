```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersValueLists customersValueLists = CustomersValueLists(client);

Error result = await customersValueLists.customersLifecycleStagesCreate(
    code: '',
    title: 'Customer',
    description: 'Has ordered at least once and is being served.', // optional
    descriptions: {
        "de": "Hat mindestens einmal bestellt und wird betreut.",
        "en": "Has ordered at least once and is being served."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Kunde",
        "en": "Customer"
    }, // optional
    position: 1, // optional
    tone: enums.Tone.neutral, // optional
);
```
