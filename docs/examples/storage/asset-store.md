```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Storage storage = Storage(client);

 result = await storage.assetStore(
    file: InputFile(path: './path-to-files/image.jpg', filename: 'image.jpg'),
    altText: '', // optional
    description: '', // optional
    displayName: '', // optional
    folderId: '', // optional
    keepArchive: true, // optional
    tags: [], // optional
    unpack: true, // optional
    visibility: enums.Visibility.public, // optional
);
```
