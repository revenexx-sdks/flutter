```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Sites sites = Sites(client);

Deployment result = await sites.sitesCreateDeployment(
    siteId: '',
    activate: true,
    code: InputFile(path: './path-to-files/image.jpg', filename: 'image.jpg'),
    buildCommand: '', // optional
    installCommand: '', // optional
    outputDirectory: '', // optional
);
```
