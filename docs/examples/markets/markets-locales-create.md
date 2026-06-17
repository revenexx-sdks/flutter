```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

MarketLocale result = await markets.marketsLocalesCreate(
    marketId: '',
    code: '',
    country: '',
    language: '',
    isDefault: false, // optional
    position: 0, // optional
);
```
