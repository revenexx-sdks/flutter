```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Message result = await messaging.messagingCreateEmail(
    content: '',
    messageId: '',
    subject: '',
    attachments: [], // optional
    bcc: [], // optional
    cc: [], // optional
    draft: false, // optional
    html: false, // optional
    scheduledAt: '', // optional
    targets: [], // optional
    topics: [], // optional
    users: [], // optional
);
```
