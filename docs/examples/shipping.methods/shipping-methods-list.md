```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingMethods shippingMethods = ShippingMethods(client);

Error result = await shippingMethods.shippingMethodsList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'position.asc', // optional
    code: 'express', // optional
    enabled: true, // optional
    pricingType: enums.PricingType.matrix, // optional
    carrierId: '8a4d1c7e-2b93-4f61-b0d2-6c5a9e3f1a44', // optional
    carrier: 'acme-parcel', // optional
    taxClass: 'reduced', // optional
);
```
