```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CartsIo cartsIo = CartsIo(client);

Error result = await cartsIo.cartsIoProfilesCreate(
    direction: enums.CartIoDirection.ximport,
    name: 'cart-export-csv',
    applyMode: enums.CartIoApplyMode.insert, // optional
    entity: enums.CartIoEntity.carts, // optional
    format: enums.CartIoFormat.json, // optional
    isTemplate: true, // optional
    mapping: {}, // optional
    options: {}, // optional
);
```
