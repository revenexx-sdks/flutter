```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsTaxClassesCreate(
    marketId: '',
    code: 'standard',
    name: 'Standard rate',
    isDefault: true, // optional
    labels: {
        "de-DE": "Regelsatz",
        "en-GB": "Standard rate"
    }, // optional
    position: 0, // optional
    rate: 20, // optional
);
```
