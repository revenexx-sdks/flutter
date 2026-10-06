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
    commands: 'npm install', // optional
    enabled: true, // optional
    entrypoint: 'src/main.js', // optional
    events: [], // optional
    execute: ["any"], // optional
    installationId: '', // optional
    logging: true, // optional
    providerBranch: 'main', // optional
    providerRepositoryId: '', // optional
    providerRootDirectory: '', // optional
    providerSilentMode: true, // optional
    runtime: enums.Runtime.node180, // optional
    schedule: '0 3 * * *', // optional
    scopes: [enums.Scopes.sessionsWrite], // optional
    specification: 's-1vcpu-512mb', // optional
    timeout: 1, // optional
);
```
