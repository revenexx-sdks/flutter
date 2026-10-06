```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesEntriesLadder(
    listId: '',
    basePrice: 9.99,
    discountPercent: 9.99, // optional
    productId: '', // optional
    quantities: [1,10,50], // optional
    replace: true, // optional
    rounding: enums.PriceEndingRule.exact, // optional
    sku: 'BOLT-M8-30', // optional
    unit: 'pcs', // optional
);
```
