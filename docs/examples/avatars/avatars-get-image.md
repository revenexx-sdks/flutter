```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Avatars avatars = Avatars(client);

 result = await avatars.avatarsGetImage(
    url: '',
    width: 0, // optional
    height: 0, // optional
);
```
