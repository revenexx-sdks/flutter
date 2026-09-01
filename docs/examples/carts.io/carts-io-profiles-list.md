```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CartsIo cartsIo = CartsIo(client);

Error result = await cartsIo.cartsIoProfilesList(
    id: '', // optional
    name: 'cart-export-csv', // optional
    direction: enums.CartIoDirection.ximport, // optional
    entity: enums.CartIoEntity.carts, // optional
    format: enums.CartIoFormat.json, // optional
    applyMode: enums.CartIoApplyMode.insert, // optional
    isTemplate: true, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
