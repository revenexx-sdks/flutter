```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesStock inventoriesStock = InventoriesStock(client);

Error result = await inventoriesStock.inventoriesReceive(
    items: [], // optional
    locationCode: 'main', // optional
    productId: '', // optional
    quantity: 12, // optional
    reason: 'Delivery note 4711', // optional
    sku: 'ACME-4711-BLK', // optional
);
```
