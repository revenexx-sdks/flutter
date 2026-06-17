```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Channels channels = Channels(client);

Channel result = await channels.channelsUpdate(
    id: '',
    code: '', // optional
    isDefault: false, // optional
    labels: {}, // optional
    name: '', // optional
    position: 0, // optional
    status: enums.ChannelStatus.active, // optional
    type: enums.ChannelType.storefront, // optional
);
```
