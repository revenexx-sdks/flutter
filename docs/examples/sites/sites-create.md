```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Sites sites = Sites(client);

Site result = await sites.sitesCreate(
    buildRuntime: enums.BuildRuntime.node180,
    framework: enums.Framework.analog,
    name: '',
    siteId: '',
    adapter: enums.Adapter.static, // optional
    buildCommand: '', // optional
    enabled: false, // optional
    fallbackFile: '', // optional
    installCommand: '', // optional
    installationId: '', // optional
    logging: false, // optional
    outputDirectory: '', // optional
    providerBranch: '', // optional
    providerRepositoryId: '', // optional
    providerRootDirectory: '', // optional
    providerSilentMode: false, // optional
    specification: '', // optional
    timeout: 0, // optional
);
```
