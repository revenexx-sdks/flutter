```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

CartItem result = await carts.cartsItemsUpdate(
    cartId: '',
    id: '',
    configuration: {}, // optional
    currency: '', // optional
    metadata: {}, // optional
    name: '', // optional
    position: 0, // optional
    productId: '', // optional
    quantity: 0, // optional
    sku: '', // optional
    snapshot: {}, // optional
    taxRate: 0, // optional
    type: enums.CartItemType.product, // optional
    unit: '', // optional
    unitPrice: 0, // optional
);
```
