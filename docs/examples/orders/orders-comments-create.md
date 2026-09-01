```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

Error result = await orders.ordersCommentsCreate(
    id: '',
    body: 'Called the customer, delivery agreed for next week.',
    author: 'service-desk', // optional
    visibility: enums.OrderCommentVisibility.internal, // optional
);
```
