```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Channels channels = Channels(client);

Error result = await channels.channelsCreate(
    code: 'shop',
    name: 'Shop',
    isDefault: true, // optional
    labels: {
        "de": "Shop",
        "en": "Shop"
    }, // optional
    position: 1, // optional
    status: enums.ChannelStatus.active, // optional
    type: 'storefront', // optional
    unassignedVisibility: enums.ChannelUnassignedVisibility.inherit, // optional
);
```
