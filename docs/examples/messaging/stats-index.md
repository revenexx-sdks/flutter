```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.statsIndex(
    days: 1, // optional
    from: '2026-01-01', // optional
    to: '2026-01-01', // optional
);
```
