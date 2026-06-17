```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Carts carts = Carts(client);

IoProfile result = await carts.cartsIoProfilesCreate(
    direction: enums.CartIoDirection.import,
    name: '',
    applyMode: enums.CartIoApplyMode.insert, // optional
    entity: enums.CartIoEntity.carts, // optional
    format: enums.CartIoFormat.json, // optional
    isTemplate: false, // optional
    mapping: {}, // optional
    options: {}, // optional
);
```
