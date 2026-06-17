```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

AssociationTypes result = await products.productsAssociationTypesUpdate(
    id: '',
    code: '', // optional
    isQuantified: false, // optional
    isTwoWay: false, // optional
    labels: {}, // optional
);
```
