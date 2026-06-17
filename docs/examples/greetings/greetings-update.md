```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Greetings greetings = Greetings(client);

Greeting result = await greetings.greetingsUpdate(
    id: '',
    locale: '', // optional
    message: '', // optional
    metadata: {}, // optional
    name: '', // optional
);
```
