```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Inventories inventories = Inventories(client);

Location result = await inventories.inventoriesLocationsGet(
    id: '',
);
```
