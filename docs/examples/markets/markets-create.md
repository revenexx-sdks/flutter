```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsCreate(
    code: 'northwind',
    name: 'Northwind',
    currency: 'EUR', // optional
    isDefault: false, // optional
    labels: {
        "de-DE": "Nordwind",
        "en-GB": "Northwind"
    }, // optional
    position: 0, // optional
    status: enums.MarketStatus.active, // optional
);
```
