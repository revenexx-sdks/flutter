```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

OrderDetail result = await orders.ordersPlace(
    items: [],
    billingAddress: {}, // optional
    buyer: {}, // optional
    cartId: '', // optional
    channelId: '', // optional
    contactId: '', // optional
    currency: '', // optional
    customerOrderNumber: '', // optional
    grandTotal: 0, // optional
    marketId: '', // optional
    metadata: {}, // optional
    organizationId: '', // optional
    payment: {}, // optional
    shipping: {}, // optional
    shippingAddress: {}, // optional
    shippingTotal: 0, // optional
    userData: {}, // optional
);
```
