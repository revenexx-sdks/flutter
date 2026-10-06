```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Channels channels = Channels(client);

Error result = await channels.channelsTypesCreate(
    code: 'feed',
    title: 'Product feed',
    description: 'A web shop a human browses.', // optional
    descriptions: {
        "de": "Shop",
        "en": "Shop"
    }, // optional
    isDefault: true, // optional
    labels: {
        "de": "Shop",
        "en": "Shop"
    }, // optional
    position: 1, // optional
    tone: enums.ChannelTypeTone.neutral, // optional
);
```
