```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Avatars avatars = Avatars(client);

 result = await avatars.avatarsGetCreditCard(
    code: enums.AvatarsGetCreditCardCode.amex,
    width: 1, // optional
    height: 1, // optional
    quality: 1, // optional
);
```
