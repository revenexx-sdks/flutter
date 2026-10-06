```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

DeploymentList result = await apps.appsListDeployments(
    functionId: '',
    queries: [], // optional
    search: '', // optional
    total: true, // optional
);
```
