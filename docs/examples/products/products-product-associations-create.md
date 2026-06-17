```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

ProductAssociations result = await products.productsProductAssociationsCreate(
    associationTypeId: '',
    productId: '',
    targetProductId: '',
    position: 0, // optional
    quantity: 0, // optional
);
```
