```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Shipping shipping = Shipping(client);

 result = await shipping.shippingRates(
    attributes: {}, // optional
    country: '', // optional
    currency: '', // optional
    marketId: '', // optional
    orderValue: 0, // optional
    quantity: 0, // optional
    weight: 0, // optional
);
```
