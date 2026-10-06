```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Error result = await products.productsProductAssociationsUpdate(
    id: '',
    associationTypeId: '', // optional
    position: 1, // optional
    productId: '', // optional
    quantity: 4, // optional
    targetProductId: '', // optional
);
```
