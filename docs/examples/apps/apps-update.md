```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

Func result = await apps.appsUpdate(
    functionId: '',
    name: '',
    commands: '', // optional
    enabled: false, // optional
    entrypoint: '', // optional
    events: [], // optional
    execute: [], // optional
    installationId: '', // optional
    logging: false, // optional
    providerBranch: '', // optional
    providerRepositoryId: '', // optional
    providerRootDirectory: '', // optional
    providerSilentMode: false, // optional
    runtime: enums.Runtime.node180, // optional
    schedule: '', // optional
    scopes: [enums.Scopes.sessionsWrite], // optional
    specification: '', // optional
    timeout: 0, // optional
);
```
