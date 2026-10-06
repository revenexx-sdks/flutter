```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

InventoriesLocations inventoriesLocations = InventoriesLocations(client);

Error result = await inventoriesLocations.inventoriesLocationsList(
    limit: 50, // optional
    offset: 0, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    code: 'main', // optional
    name: 'Main warehouse', // optional
    labels: '{}', // optional
    type: enums.InventoriesLocationsListType.warehouse, // optional
    priority: 0, // optional
    enabled: true, // optional
    address: '{}', // optional
    metadata: '{}', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
);
```
