```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesReservations inventoriesReservations = InventoriesReservations(client);

Error result = await inventoriesReservations.inventoriesRelease(
    orderRef: 'SO-2026-000123',
);
```
