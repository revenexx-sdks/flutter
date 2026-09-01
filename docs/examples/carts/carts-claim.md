```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

Error result = await carts.cartsClaim(
    contactId: '',
    sessionKey: 'a1b2c3d4e5f6',
    strategy: enums.CartMergeStrategy.merge, // optional
    targetCartId: '', // optional
);
```
