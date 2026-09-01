```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsAssetFamiliesCreate(
    code: 'packshots',
    labels: {
        "de": "Packshots",
        "en": "Packshots"
    }, // optional
    namingConvention: {
        "allowed_extensions": [
            "jpg",
            "png"
        ],
        "pattern": "{sku}_{index}",
        "source": "sku"
    }, // optional
);
```
