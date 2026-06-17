```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

PriceList result = await prices.pricesListsCreate(
    code: '',
    name: '',
    channelId: '', // optional
    contactId: '', // optional
    currency: '', // optional
    description: '', // optional
    isDefault: false, // optional
    labels: {}, // optional
    marketId: '', // optional
    metadata: {}, // optional
    organizationId: '', // optional
    priority: 0, // optional
    status: enums.PriceListStatus.active, // optional
    taxIncluded: false, // optional
    validFrom: '', // optional
    validUntil: '', // optional
);
```
