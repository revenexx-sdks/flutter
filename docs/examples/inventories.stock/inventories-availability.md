```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesStock inventoriesStock = InventoriesStock(client);

Error result = await inventoriesStock.inventoriesAvailability(
    items: [], // optional
    locationCode: 'main', // optional
    productId: '', // optional
    quantity: 1, // optional
    sku: 'ACME-4711-BLK', // optional
);
```
