```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Prices prices = Prices(client);

Error result = await prices.pricesEntriesUpdate(
    listId: '',
    id: '',
    metadata: {
        "imported_batch": "2026-02-14",
        "source_system": "erp"
    }, // optional
    priceType: enums.PriceEntryType.standard, // optional
    productId: '', // optional
    quantityMin: 9.99, // optional
    sku: 'BOLT-M8-30', // optional
    unit: 'pcs', // optional
    unitPrice: 9.99, // optional
    validFrom: '2026-03-01T00:00:00Z', // optional
    validUntil: '2026-03-31T23:59:59Z', // optional
);
```
