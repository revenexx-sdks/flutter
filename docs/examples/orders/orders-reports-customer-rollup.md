```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

OrderCustomerRollupResponse result = await orders.ordersReportsCustomerRollup(
    asOf: '2026-01-01T12:00:00Z', // optional
    cursor: '', // optional
    organizationIds: [], // optional
    statuses: [enums.OrderStatus.pending], // optional
);
```
