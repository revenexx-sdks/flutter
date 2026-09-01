```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesEntriesAdjust(
    listId: '',
    amount: 9.99, // optional
    dryRun: true, // optional
    percent: 9.99, // optional
    rounding: enums.PriceEndingRule.exact, // optional
    skuPrefix: 'BOLT-', // optional
);
```
