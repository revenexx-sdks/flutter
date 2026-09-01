```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Error result = await pages.pagesPagesCreate(
    title: 'About us',
    bundle: 'standard', // optional
    hostOptions: {}, // optional
    meta: {}, // optional
    slug: 'about-us', // optional
    sourceLanguage: 'de', // optional
);
```
