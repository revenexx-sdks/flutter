```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Io io = Io(client);

ValidationFailedResponse result = await io.listBulkJobs(
    type: null, // optional
    status: null, // optional
    vendor: '', // optional
    app: '', // optional
    entity: '', // optional
    limit: 1, // optional
);
```
