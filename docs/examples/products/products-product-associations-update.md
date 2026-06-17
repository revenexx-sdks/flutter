```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

ProductAssociations result = await products.productsProductAssociationsUpdate(
    id: '',
    associationTypeId: '', // optional
    position: 0, // optional
    productId: '', // optional
    quantity: 0, // optional
    targetProductId: '', // optional
);
```
