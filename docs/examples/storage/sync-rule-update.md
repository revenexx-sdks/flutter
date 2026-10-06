```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Storage storage = Storage(client);

 result = await storage.syncRuleUpdate(
    id: '',
    enabled: true, // optional
    options: [], // optional
    schedule: '0 3 * * *', // optional
    sftpAccountId: '', // optional
    sourcePath: '/uploads', // optional
    targetFolderId: '', // optional
);
```
