```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Inventories inventories = Inventories(client);

StockLevel result = await inventories.inventoriesStockCreate(
    locationId: '',
    metadata: {}, // optional
    onHand: 0, // optional
    productId: '', // optional
    reorderPoint: 0, // optional
    reserved: 0, // optional
    sku: '', // optional
);
```
