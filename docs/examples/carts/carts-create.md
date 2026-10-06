```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

Error result = await carts.cartsCreate(
    channelId: '', // optional
    contactId: '', // optional
    currency: 'EUR', // optional
    isCurrent: true, // optional
    metadata: {
        "campaign": "spring-catalogue",
        "locale": "de-DE",
        "source": "storefront"
    }, // optional
    name: 'Weekly order', // optional
    sessionKey: 'a1b2c3d4e5f6', // optional
);
```
