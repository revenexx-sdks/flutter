```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesStock inventoriesStock = InventoriesStock(client);

Error result = await inventoriesStock.inventoriesStockCreate(
    locationId: '',
    metadata: {
        "backorder": true
    }, // optional
    productId: '', // optional
    reorderPoint: 10, // optional
    sku: 'ACME-4711-BLK', // optional
);
```
