```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.suppressionIndex(
    channel: '', // optional
    scope: enums.Scope.all, // optional
    reason: enums.Reason.hardBounce, // optional
    address: '', // optional
    limit: 1, // optional
);
```
