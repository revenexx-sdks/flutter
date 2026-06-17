```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Products products = Products(client);

MeasurementFamilies result = await products.productsMeasurementFamiliesUpdate(
    id: '',
    code: '', // optional
    labels: {}, // optional
    standardUnit: '', // optional
    units: {}, // optional
);
```
