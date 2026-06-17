```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Template result = await pages.pagesTemplatesUpdate(
    id: '',
    description: '', // optional
    fieldName: '', // optional
    isDefault: false, // optional
    label: '', // optional
    pageBundle: '', // optional
    tree: [], // optional
);
```
