```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

Error result = await carts.cartsList(
    id: '', // optional
    name: 'Weekly order', // optional
    status: enums.CartStatus.active, // optional
    contactId: '', // optional
    sessionKey: 'a1b2c3d4e5f6', // optional
    channelId: '', // optional
    currency: 'EUR', // optional
    isCurrent: true, // optional
    itemCount: 100, // optional
    subtotal: 12, // optional
    abandonedAt: '2026-01-01T12:00:00Z', // optional
    orderedAt: '2026-01-01T12:00:00Z', // optional
    orderRef: 'SO-10042', // optional
    mergedIntoCartId: '', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
