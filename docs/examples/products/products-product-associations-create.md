```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Error result = await products.productsProductAssociationsCreate(
    associationTypeId: '',
    productId: '',
    targetProductId: '',
    position: 1, // optional
    quantity: 4, // optional
);
```
