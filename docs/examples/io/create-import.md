```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Io io = Io(client);

ValidationFailedResponse result = await io.createImport(
    app: '',
    entity: '',
    objectKey: '',
    vendor: '',
    format: enums.Format.csv, // optional
    keys: [], // optional
    maxRejects: 1, // optional
    mode: enums.Mode.upsert, // optional
    profileId: '', // optional
    target: enums.CreateImportTarget.live, // optional
);
```
