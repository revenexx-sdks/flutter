```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Tokens tokens = Tokens(client);

ResourceTokenList result = await tokens.tokensList(
    bucketId: '',
    fileId: '',
    queries: [], // optional
    total: false, // optional
);
```
