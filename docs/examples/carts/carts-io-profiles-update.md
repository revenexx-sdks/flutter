```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

IoProfile result = await carts.cartsIoProfilesUpdate(
    id: '',
    applyMode: enums.CartIoApplyMode.insert, // optional
    direction: enums.CartIoDirection.import, // optional
    entity: enums.CartIoEntity.carts, // optional
    format: enums.CartIoFormat.json, // optional
    isTemplate: false, // optional
    mapping: {}, // optional
    name: '', // optional
    options: {}, // optional
);
```
