```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAttributeGroupsCreate(
    code: 'technical_attributes',
    labels: {
        "de": "Technische Attribute",
        "en": "Technical attributes"
    }, // optional
    position: 1, // optional
);
```
