```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Inventories inventories = Inventories(client);

 result = await inventories.inventoriesReceive(
    items: [],
    locationCode: '', // optional
    reason: '', // optional
);
```
