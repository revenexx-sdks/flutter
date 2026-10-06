```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Avatars avatars = Avatars(client);

 result = await avatars.avatarsGetInitials(
    name: 'Ada Lovelace', // optional
    width: 1, // optional
    height: 1, // optional
    background: '1a73e8', // optional
);
```
