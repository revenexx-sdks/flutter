```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Customers customers = Customers(client);

Error result = await customers.customersAuthRegister(
    email: 'einkauf@example.com',
    password: '',
    firstName: 'Anna', // optional
    lastName: 'Berger', // optional
    locale: 'de-DE', // optional
    organizationId: '', // optional
    organizationName: 'Beispiel Industrietechnik GmbH', // optional
    url: 'https://shop.example.com/account', // optional
    vatId: 'DE123456789', // optional
    verificationUrl: 'https://shop.example.com/bestaetigen', // optional
);
```
