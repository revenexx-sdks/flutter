```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Shipping shipping = Shipping(client);

ShippingMethod result = await shipping.shippingMethodsCreate(
    code: '',
    name: '',
    carrier: '', // optional
    countries: [], // optional
    currency: '', // optional
    description: '', // optional
    enabled: false, // optional
    etaDaysMax: 0, // optional
    etaDaysMin: 0, // optional
    freeAbove: 0, // optional
    labels: {}, // optional
    matrixAttribute: '', // optional
    matrixBasis: enums.ShippingMethodMatrixBasis.weight, // optional
    metadata: {}, // optional
    position: 0, // optional
    price: 0, // optional
    pricingType: enums.ShippingMethodPricingType.fixed, // optional
);
```
