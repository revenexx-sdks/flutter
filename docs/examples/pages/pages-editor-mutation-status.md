```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

MutationResponse result = await pages.pagesEditorMutationStatus(
    pageId: '',
    enabled: false,
    index: 0,
    langcode: '', // optional
);
```
