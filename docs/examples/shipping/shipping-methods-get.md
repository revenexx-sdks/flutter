```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Shipping shipping = Shipping(client);

ShippingMethod result = await shipping.shippingMethodsGet(
    id: '',
);
```
