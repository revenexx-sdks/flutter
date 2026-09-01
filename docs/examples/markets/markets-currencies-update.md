```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsCurrenciesUpdate(
    marketId: '',
    id: '',
    code: 'EUR', // optional
    isDefault: true, // optional
    position: 0, // optional
);
```
