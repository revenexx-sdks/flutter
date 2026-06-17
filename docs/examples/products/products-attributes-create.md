```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Attributes result = await products.productsAttributesCreate(
    code: '',
    type: '',
    config: {}, // optional
    entityRef: '', // optional
    entityType: '', // optional
    groupId: '', // optional
    isFilterable: false, // optional
    isUnique: false, // optional
    labels: {}, // optional
    localizable: false, // optional
    position: 0, // optional
    scopable: false, // optional
    usableInGrid: false, // optional
    validation: {}, // optional
);
```
