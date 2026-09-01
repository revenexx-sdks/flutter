```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Error result = await pages.pagesPagesUpdate(
    id: '',
    bundle: 'standard', // optional
    meta: {}, // optional
    slug: 'about-us', // optional
    status: enums.PageStatus.draft, // optional
    title: 'About us', // optional
);
```
