```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersValueLists customersValueLists = CustomersValueLists(client);

Error result = await customersValueLists.customersContactEventKindsCreate(
    code: '',
    title: 'Phone call',
    description: 'Somebody spoke to this person on the phone.', // optional
    descriptions: {
        "de": "Es wurde mit dieser Person telefoniert.",
        "en": "Somebody spoke to this person on the phone."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Telefonat",
        "en": "Phone call"
    }, // optional
    position: 1, // optional
    tone: enums.Tone.neutral, // optional
);
```
