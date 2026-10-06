```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsDataModel productsDataModel = ProductsDataModel(client);

Error result = await productsDataModel.productsFamiliesCreate(
    code: 'power_tools',
    imageAttribute: 'main_image', // optional
    labelAttribute: 'name', // optional
    labels: {
        "de": "Elektrowerkzeuge",
        "en": "Power tools"
    }, // optional
);
```
