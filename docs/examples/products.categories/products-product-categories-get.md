```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsCategories productsCategories = ProductsCategories(client);

Error result = await productsCategories.productsProductCategoriesGet(
    id: '',
);
```
