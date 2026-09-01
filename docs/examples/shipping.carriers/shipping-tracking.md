```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingCarriers shippingCarriers = ShippingCarriers(client);

Error result = await shippingCarriers.shippingTracking(
    carrier: 'acme-parcel',
    country: 'DE', // optional
    postalCode: '12345', // optional
    trackingCode: 'ACME000000001DE', // optional
);
```
