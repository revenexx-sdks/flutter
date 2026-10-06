```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

Error result = await orders.ordersReturn(
    id: '',
    metadata: {
        "rma_portal_case": "C-2026-0917"
    }, // optional
    positions: [], // optional
    reason: 'Damaged on arrival', // optional
    restock: true, // optional
);
```
