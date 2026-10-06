```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.suppressionStore(
    address: '',
    channel: '',
    reason: enums.Reason.hardBounce,
    expiresAt: '2026-01-01T12:00:00Z', // optional
    note: '', // optional
    scope: enums.Scope.all, // optional
);
```
