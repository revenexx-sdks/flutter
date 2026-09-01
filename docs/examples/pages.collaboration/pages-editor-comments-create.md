```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesCollaboration pagesCollaboration = PagesCollaboration(client);

PageCommentList result = await pagesCollaboration.pagesEditorCommentsCreate(
    pageId: '',
    body: '<p>Please shorten this headline.</p>',
    blockUuids: [], // optional
    parentUuid: '', // optional
);
```
