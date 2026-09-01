```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAttributesUpdate(
    id: '',
    code: 'net_weight', // optional
    config: {
        "reference_entity": "brand"
    }, // optional
    entityRef: 'brand', // optional
    entityType: 'product', // optional
    groupId: '', // optional
    isFilterable: true, // optional
    isUnique: true, // optional
    labels: {
        "de": "Nettogewicht",
        "en": "Net weight"
    }, // optional
    localizable: true, // optional
    position: 1, // optional
    scopable: true, // optional
    type: 'select', // optional
    usableInGrid: true, // optional
    validation: {
        "max_length": 64,
        "min_length": 3
    }, // optional
);
```
