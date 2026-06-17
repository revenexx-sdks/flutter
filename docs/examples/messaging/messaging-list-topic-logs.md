```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

LogList result = await messaging.messagingListTopicLogs(
    topicId: '',
    queries: [], // optional
    total: false, // optional
);
```
