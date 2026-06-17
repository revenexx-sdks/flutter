```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Provider result = await messaging.messagingCreateMsg91Provider(
    name: '',
    providerId: '',
    authKey: '', // optional
    enabled: false, // optional
    senderId: '', // optional
    templateId: '', // optional
);
```
