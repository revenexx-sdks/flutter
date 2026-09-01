```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PaymentsProviders paymentsProviders = PaymentsProviders(client);

Error result = await paymentsProviders.paymentsProvidersUpdate(
    id: '',
    credentials: {}, // optional
    enabled: true, // optional
    name: 'Stripe', // optional
    options: {
        "capture_method": "automatic",
        "logo_url": "https:\/\/apps.example.com\/payments\/logos\/stripe",
        "three_ds": false
    }, // optional
    provider: 'stripe', // optional
    testMode: true, // optional
    webhookSecret: '', // optional
);
```
