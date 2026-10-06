```dart
import 'package:revenexx/revenexx.dart';

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Apps apps = Apps(client);

Deployment result = await apps.appsCreateDeployment(
    functionId: '',
    activate: true,
    code: InputFile(path: './path-to-files/image.jpg', filename: 'image.jpg'),
    commands: '', // optional
    entrypoint: '', // optional
);
```
