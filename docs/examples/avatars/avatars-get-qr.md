```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Avatars avatars = Avatars(client);

 result = await avatars.avatarsGetQR(
    text: '',
    size: 0, // optional
    margin: 0, // optional
    download: false, // optional
);
```
