```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

Deployment result = await apps.appsCreateTemplateDeployment(
    functionId: '',
    owner: '',
    reference: '',
    repository: '',
    rootDirectory: '',
    type: enums.Type.commit,
    activate: true, // optional
);
```
