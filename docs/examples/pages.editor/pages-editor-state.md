```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesEditor pagesEditor = PagesEditor(client);

EditorState result = await pagesEditor.pagesEditorState(
    pageId: '',
    langcode: 'de', // optional
    index: 1, // optional
);
```
