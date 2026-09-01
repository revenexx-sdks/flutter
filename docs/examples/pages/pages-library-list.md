```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

 result = await pages.pagesLibraryList(
    limit: 1, // optional
    offset: 1, // optional
    order: 'created_at.desc', // optional
    bundles: 'hero,teaser', // optional
    text: 'hero', // optional
);
```
