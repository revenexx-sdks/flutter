```dart
import 'package:revenexx/revenexx.dart';
import 'package:revenexx/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://api.revenexx.com') // Your API Endpoint
    .setApiKeyAuth('<API_KEY>'); // A gateway-managed scoped API key (rvxk_…).

Messaging messaging = Messaging(client);

Error result = await messaging.templateUpdatePatch(
    id: '',
    bodyHtml: '', // optional
    bodyText: '', // optional
    contentSid: '', // optional
    design: [], // optional
    enabled: true, // optional
    layoutId: '', // optional
    markets: [], // optional
    messageClass: enums.MessageClass.transactional, // optional
    subject: '', // optional
    testMode: true, // optional
    title: '', // optional
    validFrom: '2026-01-01T12:00:00Z', // optional
    validUntil: '2026-01-01T12:00:00Z', // optional
    variableDefaults: [], // optional
    variables: [], // optional
    whatsappCategory: enums.WhatsappCategory.marketing, // optional
);
```
