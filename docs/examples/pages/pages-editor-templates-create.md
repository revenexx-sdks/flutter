```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Pages pages = Pages(client);

Template result = await pages.pagesEditorTemplatesCreate(
    pageId: '',
    label: '',
    uuids: [],
    description: '', // optional
    fieldName: '', // optional
    isDefault: false, // optional
    pageBundle: '', // optional
);
```
