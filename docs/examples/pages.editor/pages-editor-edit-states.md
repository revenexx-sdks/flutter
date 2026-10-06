```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

PagesEditor pagesEditor = PagesEditor(client);

 result = await pagesEditor.pagesEditorEditStates(
    status: enums.PageEditStateStatus.active, // optional
    limit: 1, // optional
    offset: 1, // optional
);
```
