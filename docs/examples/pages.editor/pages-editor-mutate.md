```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesEditor pagesEditor = PagesEditor(client);

MutationResponse result = await pagesEditor.pagesEditorMutate(
    pageId: '',
    plugin: 'add',
    langcode: 'de', // optional
    payload: {}, // optional
);
```
