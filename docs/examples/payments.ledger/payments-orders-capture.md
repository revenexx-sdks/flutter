```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PaymentsLedger paymentsLedger = PaymentsLedger(client);

Error result = await paymentsLedger.paymentsOrdersCapture(
    orderRef: 'ORD-10042',
);
```
