```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Channels channels = Channels(client);

Error result = await channels.channelsList(
    id: '', // optional
    code: 'shop', // optional
    name: 'Shop', // optional
    labels: '{"en":"Shop","de":"Shop"}', // optional
    type: 'storefront', // optional
    status: enums.ChannelStatus.active, // optional
    unassignedVisibility: enums.ChannelUnassignedVisibility.inherit, // optional
    isDefault: true, // optional
    position: 1, // optional
    createdAt: '2026-01-01T12:00:00Z', // optional
    updatedAt: '2026-01-01T12:00:00Z', // optional
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
);
```
