```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesStock inventoriesStock = InventoriesStock(client);

Error result = await inventoriesStock.inventoriesRestock(
    items: [], // optional
    locationCode: 'main', // optional
    orderRef: 'SO-2026-000123', // optional
    productId: '', // optional
    quantity: 1, // optional
    reason: 'Return: wrong size', // optional
    restock: true, // optional
    sku: 'ACME-4711-BLK', // optional
);
```
