```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

Order result = await orders.ordersUpdate(
    id: '',
    billingAddress: {}, // optional
    buyer: {}, // optional
    customerOrderNumber: '', // optional
    metadata: {}, // optional
    shippingAddress: {}, // optional
    userData: {}, // optional
);
```
