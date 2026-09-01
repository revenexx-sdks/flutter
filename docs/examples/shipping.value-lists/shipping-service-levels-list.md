```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingValueLists shippingValueLists = ShippingValueLists(client);

 result = await shippingValueLists.shippingServiceLevelsList(
    limit: 1, // optional
    offset: 1, // optional
);
```
