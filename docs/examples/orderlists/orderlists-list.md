```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orderlists orderlists = Orderlists(client);

Error result = await orderlists.orderlistsList(
    ownerId: '', // optional
    organizationId: '', // optional
    kind: 'shopping', // optional
    limit: 50, // optional
    offset: 0, // optional
    order: 'created_at.desc', // optional
);
```
