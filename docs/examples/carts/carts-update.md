```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

Error result = await carts.cartsUpdate(
    id: '',
    channelId: '', // optional
    currency: 'EUR', // optional
    metadata: {
        "campaign": "spring-catalogue",
        "locale": "de-DE",
        "source": "storefront"
    }, // optional
    name: 'Weekly order', // optional
);
```
