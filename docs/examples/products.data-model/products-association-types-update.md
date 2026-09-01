```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAssociationTypesUpdate(
    id: '',
    code: 'cross_sell', // optional
    isQuantified: true, // optional
    isTwoWay: true, // optional
    labels: {
        "de": "Querverkauf",
        "en": "Cross-sell"
    }, // optional
);
```
