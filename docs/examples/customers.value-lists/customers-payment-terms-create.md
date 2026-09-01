```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CustomersValueLists customersValueLists = CustomersValueLists(client);

Error result = await customersValueLists.customersPaymentTermsCreate(
    code: '',
    title: 'Net 30 days',
    description: 'Invoice due 30 days after the delivery note.', // optional
    descriptions: {
        "de": "Rechnung 30 Tage nach Lieferschein f\u00e4llig.",
        "en": "Invoice due 30 days after the delivery note."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Zahlbar in 30 Tagen",
        "en": "Net 30 days"
    }, // optional
    position: 1, // optional
    tone: enums.Tone.neutral, // optional
);
```
