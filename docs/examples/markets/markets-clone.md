```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Markets markets = Markets(client);

Error result = await markets.marketsClone(
    id: 'northwind',
    code: 'northwind-b2b',
    copyCurrencies: true, // optional
    copyLocales: true, // optional
    copyTaxClasses: true, // optional
    currency: 'EUR', // optional
    name: 'Northwind B2B', // optional
    status: enums.MarketStatus.active, // optional
);
```
