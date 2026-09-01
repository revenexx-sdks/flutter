```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Sites sites = Sites(client);

Deployment result = await sites.sitesCreateVcsDeployment(
    siteId: '',
    reference: 'main',
    type: enums.SitesCreateTemplateDeploymentType.branch,
    activate: true, // optional
);
```
