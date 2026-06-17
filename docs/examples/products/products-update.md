```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Products result = await products.productsUpdate(
    id: '',
    attributeValues: {}, // optional
    completeness: {}, // optional
    deletedAt: '', // optional
    enabled: false, // optional
    familyId: '', // optional
    familyVariantId: '', // optional
    kind: '', // optional
    parentId: '', // optional
    quantifiedAssociations: {}, // optional
    sku: '', // optional
    taxClass: '', // optional
);
```
