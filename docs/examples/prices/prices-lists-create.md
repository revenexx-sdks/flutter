```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesListsCreate(
    code: 'dealer-de',
    name: 'Dealer prices',
    channelId: '', // optional
    contactId: '', // optional
    currency: 'EUR', // optional
    description: 'Contract prices for authorised dealers.', // optional
    isDefault: true, // optional
    labels: {
        "de": "H\u00e4ndlerpreise",
        "en": "Dealer prices"
    }, // optional
    metadata: {
        "erp_price_group": "A1",
        "source_system": "erp"
    }, // optional
    organizationId: '', // optional
    priority: 1, // optional
    requiresAuth: true, // optional
    status: enums.PriceListStatus.active, // optional
    taxBasis: enums.PriceListTaxBasis.net, // optional
    taxIncluded: true, // optional
    validFrom: '2026-01-01T00:00:00Z', // optional
    validUntil: '2026-12-31T23:59:59Z', // optional
);
```
