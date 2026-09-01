```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

 result = await productsDataModel.productsAttributeOptionsList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    id: '', // optional
    attributeId: '', // optional
    code: 'stainless_steel', // optional
    position: 1, // optional
    swatch: '{}', // optional
    labels: '{}', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
);
```
