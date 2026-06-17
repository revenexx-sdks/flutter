```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Market result = await markets.marketsUpdate(
    id: '',
    code: '', // optional
    currency: '', // optional
    isDefault: false, // optional
    labels: {}, // optional
    name: '', // optional
    position: 0, // optional
    status: enums.MarketStatus.active, // optional
);
```
