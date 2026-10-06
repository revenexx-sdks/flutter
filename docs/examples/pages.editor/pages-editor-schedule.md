```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesEditor pagesEditor = PagesEditor(client);

Error result = await pagesEditor.pagesEditorSchedule(
    pageId: '',
    scheduledAt: '2026-01-01T12:00:00Z',
);
```
