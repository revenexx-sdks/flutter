```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Shipping shipping = Shipping(client);

ShippingRateTier result = await shipping.shippingTiersCreate(
    methodId: '',
    fromValue: 0, // optional
    position: 0, // optional
    price: 0, // optional
);
```
