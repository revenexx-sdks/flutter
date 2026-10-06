```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsReferences productsReferences = ProductsReferences(client);

Error result = await productsReferences.productsReferenceEntitiesCreate(
    code: 'brand',
    image: 'reference-entities/brand.svg', // optional
    labels: {
        "de": "Marke",
        "en": "Brand"
    }, // optional
);
```
