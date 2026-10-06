```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsTaxClassesList(
    marketId: '',
    id: '', // optional
    code: 'standard', // optional
    name: 'Standard rate', // optional
    labels: '{"de-DE":"Regelsatz","en-GB":"Standard rate"}', // optional
    rate: 20, // optional
    isDefault: true, // optional
    position: 0, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 50, // optional
    offset: 0, // optional
    order: 'position.asc', // optional
);
```
