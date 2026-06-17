```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Payments payments = Payments(client);

PaymentProvider result = await payments.paymentsProvidersUpdate(
    id: '',
    credentials: {}, // optional
    enabled: false, // optional
    name: '', // optional
    options: {}, // optional
    provider: '', // optional
    testMode: false, // optional
    webhookSecret: '', // optional
);
```
