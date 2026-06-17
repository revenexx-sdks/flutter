```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

MarketTaxClass result = await markets.marketsTaxClassesCreate(
    marketId: '',
    code: '',
    name: '',
    isDefault: false, // optional
    labels: {}, // optional
    position: 0, // optional
    rate: 0, // optional
);
```
