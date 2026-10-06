```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

Error result = await orders.ordersNumberRangesUpdate(
    id: '',
    channelId: '', // optional
    code: 'order', // optional
    counter: 123, // optional
    metadata: {
        "owner": "erp-sync"
    }, // optional
    padding: 6, // optional
    positionStep: 10, // optional
    prefix: 'ORD-', // optional
    step: 1, // optional
    suffix: '', // optional
);
```
