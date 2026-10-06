```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

ProductsCategories productsCategories = ProductsCategories(client);

Error result = await productsCategories.productsProductCategoriesUpdate(
    id: '',
    categoryId: '', // optional
    position: 1, // optional
    productId: '', // optional
    source: enums.ProductCategoriesSource.manual, // optional
);
```
