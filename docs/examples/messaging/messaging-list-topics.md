```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

TopicList result = await messaging.messagingListTopics(
    queries: [], // optional
    search: '', // optional
    total: false, // optional
);
```
