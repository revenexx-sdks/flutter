```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Error result = await pages.pagesPagesRevisions(
    id: '',
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    label: 'Autumn campaign', // optional
    createdBy: '', // optional
    createdByName: '', // optional
    createdAt: '', // optional
);
```
