```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

ProductCategories result = await products.productsProductCategoriesUpdate(
    id: '',
    categoryId: '', // optional
    position: 0, // optional
    productId: '', // optional
);
```
