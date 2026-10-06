```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Events events = Events(client);

 result = await events.eventsGetCatalog(
    fields: 'topic,channel', // optional
);
```
