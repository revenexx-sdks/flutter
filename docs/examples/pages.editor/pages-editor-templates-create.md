```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesEditor pagesEditor = PagesEditor(client);

Error result = await pagesEditor.pagesEditorTemplatesCreate(
    pageId: '',
    label: 'Hero with two teasers',
    uuids: [],
    description: 'Full-width hero followed by a two-column teaser row.', // optional
    fieldName: 'content', // optional
    isDefault: true, // optional
    pageBundle: 'standard', // optional
);
```
