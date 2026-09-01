```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesListsList(
    id: '', // optional
    code: 'standard', // optional
    name: 'Standard prices', // optional
    description: 'The list every buyer falls back to.', // optional
    currency: 'EUR', // optional
    status: enums.PriceListStatus.active, // optional
    priority: 1, // optional
    isDefault: true, // optional
    taxBasis: enums.PriceListTaxBasis.net, // optional
    taxIncluded: true, // optional
    requiresAuth: true, // optional
    contactId: '', // optional
    organizationId: '', // optional
    channelId: '', // optional
    validFrom: '2026-01-01T12:00:00Z', // optional
    validUntil: '2026-01-01T12:00:00Z', // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
