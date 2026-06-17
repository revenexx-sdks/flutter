```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Categories result = await products.productsCategoriesCreate(
    code: '',
    labels: {}, // optional
    parentId: '', // optional
    path: '', // optional
    position: 0, // optional
    values: {}, // optional
);
```
