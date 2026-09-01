```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Error result = await products.productsGrid(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    q: 'cordless drill', // optional
    kind: enums.Kind.simple, // optional
    enabled: true, // optional
    familyId: '', // optional
);
```
