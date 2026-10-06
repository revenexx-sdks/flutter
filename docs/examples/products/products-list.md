```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

 result = await products.productsList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    sku: 'ACME-4711-BLK', // optional
    kind: enums.Kind.simple, // optional
    parentId: '', // optional
    familyId: '', // optional
    familyVariantId: '', // optional
    enabled: true, // optional
    taxClass: 'standard', // optional
    attributeValues: '{}', // optional
    label: 'Akku-Bohrschrauber 18V', // optional
    quantifiedAssociations: '{}', // optional
    completeness: '{}', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    deletedAt: '2026-01-01T12:00:00Z', // optional
);
```
