```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orderlists orderlists = Orderlists(client);

Error result = await orderlists.orderlistsKindsCreate(
    code: 'reagents',
    title: 'Reagent list',
    description: 'Chemicals ordered against a standing lab protocol.', // optional
    descriptions: {
        "de": "Chemikalien, die nach einem festen Laborprotokoll bestellt werden.",
        "en": "Chemicals ordered against a standing lab protocol."
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Reagenzienliste",
        "en": "Reagent list"
    }, // optional
    position: 2, // optional
    tone: enums.OrderListKindTone.neutral, // optional
);
```
