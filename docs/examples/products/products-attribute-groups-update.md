```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

AttributeGroups result = await products.productsAttributeGroupsUpdate(
    id: '',
    code: '', // optional
    labels: {}, // optional
    position: 0, // optional
);
```
