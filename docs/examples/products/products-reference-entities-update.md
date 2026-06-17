```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

ReferenceEntities result = await products.productsReferenceEntitiesUpdate(
    id: '',
    code: '', // optional
    image: '', // optional
    labels: {}, // optional
);
```
