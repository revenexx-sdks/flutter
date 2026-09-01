```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingMethods shippingMethods = ShippingMethods(client);

Error result = await shippingMethods.shippingTiersLadder(
    methodId: '',
    basePrice: 4.9,
    step: 5,
    toValue: 30,
    fromValue: 0, // optional
    replace: true, // optional
    stepPrice: 2, // optional
);
```
