```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.sendSend(
    channel: '',
    template: '',
    to: '',
    attachments: [], // optional
    data: {}, // optional
    draft: true, // optional
    locale: '', // optional
    market: '', // optional
    sendAt: '2026-01-01T12:00:00Z', // optional
);
```
