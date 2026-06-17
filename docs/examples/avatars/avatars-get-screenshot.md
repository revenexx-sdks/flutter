```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Avatars avatars = Avatars(client);

 result = await avatars.avatarsGetScreenshot(
    url: '',
    headers: {}, // optional
    viewportWidth: 0, // optional
    viewportHeight: 0, // optional
    scale: 0, // optional
    theme: enums.Theme.light, // optional
    userAgent: '', // optional
    fullpage: false, // optional
    locale: '', // optional
    timezone: enums.Timezone.africaAbidjan, // optional
    latitude: 0, // optional
    longitude: 0, // optional
    accuracy: 0, // optional
    touch: false, // optional
    permissions: [enums.Permissions.geolocation], // optional
    sleep: 0, // optional
    width: 0, // optional
    height: 0, // optional
    quality: 0, // optional
    output: enums.Output.jpg, // optional
);
```
