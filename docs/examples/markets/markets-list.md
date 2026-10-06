```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsList(
    id: '', // optional
    code: 'northwind', // optional
    name: 'Northwind', // optional
    labels: '{"de-DE":"Nordwind","en-GB":"Northwind"}', // optional
    currency: 'EUR', // optional
    status: enums.MarketsListStatus.active, // optional
    isDefault: false, // optional
    position: 0, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 50, // optional
    offset: 0, // optional
    order: 'position.asc', // optional
);
```
