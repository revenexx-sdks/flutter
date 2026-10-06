```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

 result = await productsDataModel.productsAttributesList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    code: 'net_weight', // optional
    entityType: 'product', // optional
    entityRef: 'brand', // optional
    type: 'select', // optional
    groupId: '', // optional
    localizable: true, // optional
    scopable: true, // optional
    isUnique: true, // optional
    isFilterable: true, // optional
    usableInGrid: true, // optional
    validation: '{}', // optional
    config: '{}', // optional
    labels: '{}', // optional
    position: 1, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
);
```
