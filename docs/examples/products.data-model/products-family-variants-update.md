```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsFamilyVariantsUpdate(
    id: '',
    axes: [
        "colour",
        "size"
    ], // optional
    code: 'clothing_by_colour_size', // optional
    familyId: '', // optional
    labels: {
        "de": "Nach Farbe und Gr\u00f6\u00dfe",
        "en": "By colour and size"
    }, // optional
);
```
