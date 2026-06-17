```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

Cart result = await carts.cartsCreate(
    channelId: '', // optional
    contactId: '', // optional
    currency: '', // optional
    isCurrent: false, // optional
    marketId: '', // optional
    metadata: {}, // optional
    name: '', // optional
    sessionKey: '', // optional
);
```
