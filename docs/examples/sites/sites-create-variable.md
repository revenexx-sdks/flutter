```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Sites sites = Sites(client);

Variable result = await sites.sitesCreateVariable(
    siteId: '',
    key: '',
    value: '',
    secret: true, // optional
);
```
