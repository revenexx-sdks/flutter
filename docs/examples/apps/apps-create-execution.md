```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

Execution result = await apps.appsCreateExecution(
    functionId: '',
    xasync: true, // optional
    body: '', // optional
    headers: {}, // optional
    method: enums.Method.gET, // optional
    path: '/', // optional
    scheduledAt: '', // optional
);
```
