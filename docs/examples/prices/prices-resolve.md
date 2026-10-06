```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesResolve(
    items: [],
    at: '2026-03-15T09:00:00Z', // optional
    channelId: '', // optional
    contactId: '', // optional
    currency: 'EUR', // optional
    marketId: '', // optional
    organizationId: '', // optional
);
```
