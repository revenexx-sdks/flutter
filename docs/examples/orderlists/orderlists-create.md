```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orderlists orderlists = Orderlists(client);

Error result = await orderlists.orderlistsCreate(
    name: 'Weekly office supplies',
    ownerId: '',
    ownerName: 'Jamie Rivera',
    items: [], // optional
    kind: 'shopping', // optional
    metadata: {
        "department": "facility",
        "erp_reference": "REQ-2026-0042"
    }, // optional
    organizationId: '', // optional
    shared: true, // optional
);
```
