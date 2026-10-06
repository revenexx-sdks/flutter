```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

CartsIo cartsIo = CartsIo(client);

Error result = await cartsIo.cartsIoProfilesUpdate(
    id: '',
    applyMode: enums.CartIoApplyMode.insert, // optional
    direction: enums.CartIoDirection.ximport, // optional
    entity: enums.CartIoEntity.carts, // optional
    format: enums.CartIoFormat.json, // optional
    isTemplate: true, // optional
    mapping: {}, // optional
    name: 'cart-export-csv', // optional
    options: {}, // optional
);
```
