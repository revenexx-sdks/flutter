```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Provider result = await messaging.messagingCreateResendProvider(
    name: '',
    providerId: '',
    apiKey: '', // optional
    enabled: false, // optional
    fromEmail: '', // optional
    fromName: '', // optional
    replyToEmail: '', // optional
    replyToName: '', // optional
);
```
