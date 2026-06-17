```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Payments payments = Payments(client);

Payment result = await payments.paymentsCreate(
    amount: 0,
    methodCode: '',
    cartId: '', // optional
    contactId: '', // optional
    country: '', // optional
    currency: '', // optional
    idempotencyKey: '', // optional
    metadata: {}, // optional
    orderRef: '', // optional
    returnUrl: '', // optional
);
```
