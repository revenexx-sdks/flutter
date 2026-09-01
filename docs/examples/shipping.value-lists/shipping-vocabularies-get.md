```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ShippingValueLists shippingValueLists = ShippingValueLists(client);

Error result = await shippingValueLists.shippingVocabulariesGet(
    name: enums.ShippingVocabulariesGetName.carrierStatuses,
);
```
