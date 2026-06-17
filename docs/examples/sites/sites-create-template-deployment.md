```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Sites sites = Sites(client);

Deployment result = await sites.sitesCreateTemplateDeployment(
    siteId: '',
    owner: '',
    reference: '',
    repository: '',
    rootDirectory: '',
    type: enums.Type.branch,
    activate: false, // optional
);
```
