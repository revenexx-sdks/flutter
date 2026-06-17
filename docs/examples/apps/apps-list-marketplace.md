```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

 result = await apps.appsListMarketplace(
    search: '', // optional
    perPage: 0, // optional
    page: 0, // optional
);
```
