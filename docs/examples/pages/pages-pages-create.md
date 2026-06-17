```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Page result = await pages.pagesPagesCreate(
    title: '',
    bundle: '', // optional
    hostOptions: {}, // optional
    meta: {}, // optional
    slug: '', // optional
    sourceLanguage: '', // optional
);
```
