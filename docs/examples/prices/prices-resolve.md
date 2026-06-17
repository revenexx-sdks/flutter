```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

 result = await prices.pricesResolve(
    items: [],
    at: '', // optional
    channelId: '', // optional
    contactId: '', // optional
    currency: '', // optional
    marketId: '', // optional
    organizationId: '', // optional
);
```
