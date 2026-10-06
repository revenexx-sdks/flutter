```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAttributeOptionsUpdate(
    id: '',
    attributeId: '', // optional
    code: 'stainless_steel', // optional
    labels: {
        "de": "Edelstahl",
        "en": "Stainless steel"
    }, // optional
    position: 1, // optional
    swatch: {
        "hex": "#c0c0c0"
    }, // optional
);
```
