```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Orders orders = Orders(client);

NumberRange result = await orders.ordersNumberRangesUpdate(
    id: '',
    channelId: '', // optional
    code: '', // optional
    counter: 0, // optional
    metadata: {}, // optional
    padding: 0, // optional
    positionStep: 0, // optional
    prefix: '', // optional
    step: 0, // optional
    suffix: '', // optional
);
```
