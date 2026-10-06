```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Error result = await pages.pagesTemplatesUpdate(
    id: '',
    description: 'Full-width hero followed by a two-column teaser row.', // optional
    fieldName: 'content', // optional
    isDefault: true, // optional
    label: 'Hero with two teasers', // optional
    pageBundle: 'standard', // optional
    tree: [], // optional
);
```
