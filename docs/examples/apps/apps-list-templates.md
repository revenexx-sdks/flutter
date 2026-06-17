```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

TemplateFunctionList result = await apps.appsListTemplates(
    runtimes: [enums.Runtimes.node180], // optional
    useCases: [enums.UseCases.starter], // optional
    limit: 0, // optional
    offset: 0, // optional
    total: false, // optional
);
```
