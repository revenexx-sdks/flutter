```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

Assets result = await products.productsAssetsUpdate(
    id: '',
    assetFamilyId: '', // optional
    attributeValues: {}, // optional
    code: '', // optional
    mediaUuid: '', // optional
);
```
