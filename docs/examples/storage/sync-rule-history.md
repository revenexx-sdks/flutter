```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Storage storage = Storage(client);

 result = await storage.syncRuleHistory(
    ruleId: '', // optional
    from: '', // optional
    to: '', // optional
);
```
