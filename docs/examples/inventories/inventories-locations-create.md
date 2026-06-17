```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Inventories inventories = Inventories(client);

Location result = await inventories.inventoriesLocationsCreate(
    code: '',
    name: '',
    address: {}, // optional
    enabled: false, // optional
    labels: {}, // optional
    metadata: {}, // optional
    priority: 0, // optional
    type: enums.LocationType.warehouse, // optional
);
```
