```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesCollaboration pagesCollaboration = PagesCollaboration(client);

Error result = await pagesCollaboration.pagesEditorCommentsUpdate(
    pageId: '',
    uuid: '',
    body: '<p>Please shorten this headline.</p>',
);
```
