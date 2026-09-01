```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingCarriers shippingCarriers = ShippingCarriers(client);

Error result = await shippingCarriers.shippingCarriersList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'position.asc', // optional
    code: 'acme-parcel', // optional
    status: enums.ShippingCarriersListStatus.active, // optional
    serviceLevel: 'express', // optional
);
```
