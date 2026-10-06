```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.bindingUpdate(
    id: '',
    channel: '', // optional
    enabled: true, // optional
    eventTopic: '', // optional
    fallbackOrder: 1, // optional
    locale: '', // optional
    recipient: '', // optional
    templateKey: '', // optional
);
```
