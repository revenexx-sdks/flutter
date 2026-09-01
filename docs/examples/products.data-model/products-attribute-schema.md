```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAttributeSchema(
    familyId: '', // optional
    familyCode: '', // optional
    entityType: enums.EntityType.product, // optional
    entityRef: 'brand', // optional
    locale: 'de_DE', // optional
    channel: 'b2b', // optional
    kind: enums.Kind.simple, // optional
);
```
