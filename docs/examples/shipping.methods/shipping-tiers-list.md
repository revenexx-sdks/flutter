```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingMethods shippingMethods = ShippingMethods(client);

Error result = await shippingMethods.shippingTiersList(
    methodId: '',
    limit: 1, // optional
    offset: 1, // optional
    order: 'position.asc', // optional
    fromValue: 10, // optional
);
```
