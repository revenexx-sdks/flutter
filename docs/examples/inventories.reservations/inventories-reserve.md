```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesReservations inventoriesReservations = InventoriesReservations(client);

Error result = await inventoriesReservations.inventoriesReserve(
    orderRef: 'SO-2026-000123',
    expiresAt: '2026-01-01T12:00:00Z', // optional
    items: [], // optional
    locationCode: 'main', // optional
    productId: '', // optional
    quantity: 2, // optional
    shipTo: {}, // optional
    sku: 'ACME-4711-BLK', // optional
);
```
