```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orderlists orderlists = Orderlists(client);

Error result = await orderlists.orderlistsUpdate(
    id: '',
    kind: 'shopping', // optional
    metadata: {
        "department": "facility",
        "erp_reference": "REQ-2026-0042"
    }, // optional
    name: 'Weekly office supplies', // optional
    shared: true, // optional
);
```
