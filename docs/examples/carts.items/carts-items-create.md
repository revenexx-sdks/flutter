```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CartsItems cartsItems = CartsItems(client);

Error result = await cartsItems.cartsItemsCreate(
    cartId: '',
    configuration: {
        "colour": "RAL 7016",
        "finish": "brushed",
        "length_mm": 2400,
        "mounting": "wall"
    }, // optional
    currency: 'EUR', // optional
    metadata: {
        "campaign": "spring-catalogue",
        "locale": "de-DE",
        "source": "storefront"
    }, // optional
    name: 'Hex bolt M8', // optional
    position: 1, // optional
    productId: '', // optional
    quantity: 9.99, // optional
    sku: 'BOLT-M8-30', // optional
    snapshot: {}, // optional
    taxRate: 19, // optional
    type: enums.CartItemType.product, // optional
    unit: 'pcs', // optional
    unitPrice: 9.99, // optional
);
```
