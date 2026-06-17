```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Storage storage = Storage(client);

 result = await storage.assetStore(
    file: '',
    altText: '', // optional
    description: '', // optional
    displayName: '', // optional
    folderId: '', // optional
    keepArchive: false, // optional
    tags: [], // optional
    unpack: false, // optional
    visibility: enums.Visibility.public, // optional
);
```
